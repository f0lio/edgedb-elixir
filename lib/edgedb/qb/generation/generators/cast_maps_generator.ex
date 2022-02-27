defmodule EdgeDB.QB.Generation.Generators.CastMapsGenerator do
  alias EdgeDB.QB.Utils
  alias EdgeDB.QB.Generation

  def generate(%{
        types: types,
        casts:
          %{
            implicit_cast_map: implicit_cast_map
          } = casts,
        types_by_name: types_by_name
      }) do
    get_shared_parent_scalar_fn_def = define_get_shared_parent_scalar_fn(types, casts)
    implicit_cast_map_def = define_implicit_cast_map(types, implicit_cast_map)
    implicitly_castable_fn_def = define_implicitly_castable_fn()
    literal_to_type_set_fn_def = define_literal_to_type_set_fn(types_by_name)

    code =
      quote do
        unquote(implicit_cast_map_def)

        unquote(get_shared_parent_scalar_fn_def)
        unquote(implicitly_castable_fn_def)
        unquote(literal_to_type_set_fn_def)
      end

    %Generation.Module{name: Generation.module_name(CastMaps), code: code}
  end

  def define_get_shared_parent_scalar_fn(types, casts) do
    reverse_topo =
      types
      |> Enum.reverse()
      |> Enum.map(fn {_id, type} ->
        type
      end)

    material_scalars =
      Enum.filter(reverse_topo, fn type ->
        type.kind == "scalar" and not type.is_abstract and type.enum_values == []
      end)

    casting = fn id ->
      MapSet.new(casts.implicit_cast_map[types[id]] || [])
    end

    funs =
      Enum.reduce(material_scalars, [], fn outer, acc ->
        outer_castable_to = casting.(outer.id)

        Enum.reduce(material_scalars, acc, fn inner, acc ->
          inner_castable_to = casting.(inner.id)
          same_type? = inner.name == outer.name
          a_castable_to_b? = inner.id in outer_castable_to
          b_castable_to_a? = outer.id in inner_castable_to

          shared_parent_id =
            Enum.find(outer_castable_to, fn type ->
              type in inner_castable_to
            end)

          shared_parent = types[shared_parent_id][:name] || nil

          valid_cast? = same_type? or a_castable_to_b? or b_castable_to_a? or shared_parent

          if valid_cast? do
            func =
              cond do
                same_type? ->
                  quote do
                    def get_shared_parent_scalar(
                          %{__name__: unquote(outer.name)} = _a,
                          %{__name__: unquote(inner.name)} = b
                        ) do
                      b
                    end
                  end

                a_castable_to_b? ->
                  quote do
                    def get_shared_parent_scalar(
                          %{__name__: unquote(outer.name)} = _a,
                          %{__name__: unquote(inner.name)} = b
                        ) do
                      b
                    end
                  end

                b_castable_to_a? ->
                  quote do
                    def get_shared_parent_scalar(
                          %{__name__: unquote(outer.name)} = a,
                          %{__name__: unquote(inner.name)} = _b
                        ) do
                      a
                    end
                  end

                shared_parent ->
                  raise RuntimeError, "not implemented"

                true ->
                  quote do
                    def get_shared_parent_scalar(
                          %{__name__: unquote(outer.name)} = a,
                          %{__name__: unquote(inner.name)} = b
                        ) do
                      raise RuntimeError,
                            "types are not castable: #{inspect(a.__name__)}, #{inspect(b.__name__)}"
                    end
                  end
              end

            [func | acc]
          else
            acc
          end
        end)
      end)

    start_fn =
      quote do
        def get_shared_parent_scalar(%{__casttype__: a}, %{__casttype__: b}) do
          get_shared_parent_scalar(a, b)
        end

        def get_shared_parent_scalar(%{__casttype__: a}, b) do
          get_shared_parent_scalar(a, b)
        end

        def get_shared_parent_scalar(a, %{__casttype__: b}) do
          get_shared_parent_scalar(a, b)
        end
      end

    last_fn =
      quote do
        def get_shared_parent_scalar(a, b) do
          raise RuntimeError,
                "types are not castable: #{inspect(a.__name__)}, #{inspect(b.__name__)}"
        end
      end

    [start_fn | Enum.reverse([last_fn, funs])]
  end

  defp define_implicit_cast_map(types, implicit_cast_map) do
    implicit_cast_map =
      Enum.reduce(implicit_cast_map, %{}, fn
        {_source_id, []}, acc ->
          acc

        {source_id, castable_to}, acc ->
          casts =
            castable_to
            |> Enum.map(fn target_id ->
              types[target_id].name
            end)
            |> Enum.uniq()

          Map.put(acc, types[source_id].name, casts)
      end)

    quote do
      @implicit_cast_map unquote(implicit_cast_map)
    end
  end

  defp define_implicitly_castable_fn do
    quote do
      def implicitly_castable?(from, to) do
        case @implicit_cast_map[from] do
          nil ->
            false

          casts ->
            to in casts
        end
      end
    end
  end

  defp define_literal_to_type_set_fn(types_by_name) do
    funs =
      Enum.map(Utils.Generation.literal_to_scalar_mapping(), fn
        {%{guard: guard}, %{type: scalar_type}} ->
          quote do
            def literal_to_type_set(type) when unquote(guard)(type) do
              EdgeDB.QB.Syntax.Literal.get_type(unquote(types_by_name[scalar_type].id)).(type)
            end
          end

        {struct_mod, %{type: scalar_type}} ->
          quote do
            def literal_to_type_set(type) when is_struct(type, unquote(struct_mod)) do
              EdgeDB.QB.Syntax.Literal.get_type(unquote(types_by_name[scalar_type].id)).(type)
            end
          end
      end)

    start_fn =
      quote do
        def literal_to_type_set(%{__element__: _element} = type) do
          type
        end
      end

    end_fn =
      quote do
        def literal_to_type_set(type) do
          raise RuntimeError, "cannot convert literal #{inspect(type)} into scalar type"
        end
      end

    [start_fn | funs] ++ [end_fn]
  end
end
