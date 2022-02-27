defmodule EdgeDB.QB.Reflection.Hydrate do
  import EdgeDB.QB.Runtime

  alias EdgeDB.QB.{
    Caches,
    Utils
  }

  @json_library Application.compile_env(:edgedb, :json, Jason)

  def merge_object_types(a, b) do
    pointers =
      Enum.reduce(a.__pointers__, %{}, fn {a_key, a_property}, acc ->
        b_property = b.__pointers__[a_key]

        cond do
          is_nil(b_property) ->
            acc

          a_property.cardinality != b_property.cardinality ->
            acc

          a_property.target.().__name__ != b.target.().__name__ ->
            acc

          true ->
            Map.put(acc, a_key, a_property)
        end
      end)

    %{
      __kind__: :object,
      __name__: "#{a.__name__} UNION #{b.__name__}",
      __pointers__: pointers,
      __shape__: %{}
    }
  end

  def make_type_from_name(type_name, literal_fn) do
    type_id =
      Enum.find(generated(Types).types(), fn {_id, type} ->
        type.name == type_name
      end).id

    make_type(type_id, literal_fn, nil)
  end

  def make_type(id, literal_fn, anytype \\ nil) do
    if type = Caches.get(:type_cache, id) do
      type
    else
      type = generated(Types).types()[id]
      obj = %{__name__: type.name}

      cond do
        type.name == "anytype" ->
          anytype || raise RuntimeError, "anytype not provided"

        type.kind == "object" ->
          obj = Map.put(obj, :__kind__, :object)
          pointers = %{}
          seen = MapSet.new()

          {pointers, seen} = apply_types(type, pointers, seen, literal_fn)

          ancestors = get_all_ancestors(id, type.bases)

          {pointers, _seen} =
            Enum.reduce(ancestors, {pointers, seen}, fn anc_type, {pointers, seen} ->
              apply_types(anc_type, pointers, seen, literal_fn)
            end)

          obj = Map.merge(obj, %{__pointers__: pointers, __shape__: %{}})
          Caches.set(:type_cache, id, obj)
          obj

        type.kind == "scalar" ->
          obj =
            if type[:cast_only_type] do
              Map.put(obj, :__casttype__, make_type(type.cast_only_type, literal_fn))
            else
              obj
            end

          obj =
            if type.enum_values != [] do
              obj = Map.put(obj, :__kind__, :enum)

              fill_enum_fields(obj, type.enum_values, literal_fn)
            else
              Map.put(obj, :__kind__, :scalar)
            end

          obj =
            if type.name == "std::json" do
              Map.put(obj, :__executor__, fn value ->
                literal_fn.(obj, @json_library.encode!(value))
              end)
            else
              Map.put(obj, :__executor__, fn value ->
                literal_fn.(obj, value)
              end)
            end

          Caches.set(:type_cache, id, obj)
          obj

        type.kind == "array" ->
          element = make_type(type.array_element_id, literal_fn, anytype)
          Map.merge(obj, %{__element__: element, __name__: "array<#{element.__name__}>"})

        type.kind == "tuple" ->
          if Enum.at(type.tuple_elements, 0).name == "0" do
            items =
              Enum.map(type.tuple_elements, fn element ->
                make_type(element.target_id, literal_fn, anytype)
              end)

            types_in_name =
              Enum.map_join(items, ", ", fn item ->
                item.__name__
              end)

            Map.merge(obj, %{
              __kind__: :tuple,
              __items__: items,
              __name__: "tuple<#{types_in_name}>"
            })
          else
            shape =
              Enum.reduce(type.tuple_elements, %{}, fn element, shape ->
                Map.put(shape, element.name, make_type(element.target_id, literal_fn, anytype))
              end)

            types_in_name =
              Enum.map_join(shape, ", ", fn {key, value} ->
                "#{key}: #{value.__name__}"
              end)

            Map.merge(obj, %{
              __kind__: :named_tuple,
              __shape__: shape,
              __name__: "tuple<#{types_in_name}>"
            })
          end

        true ->
          raise RuntimeError, "invalid type: #{inspect(type.kind)}"
      end
    end
  end

  defp apply_types(type, shape, seen, literal_fn) do
    pointers = type.pointers ++ type.backlinks ++ type.backlink_stubs

    Enum.reduce(pointers, {shape, seen}, fn pointer, {shape, seen} ->
      if MapSet.member?(seen, pointer.name) do
        {shape, seen}
      else
        seen = MapSet.put(seen, pointer.name)

        shape =
          case pointer.kind do
            "link" ->
              link_properties =
                Enum.reduce(pointer[:pointers] || [], %{}, fn
                  %{kind: kind}, acc when kind != "property" ->
                    acc

                  %{name: name}, acc when name in ~w(source target) ->
                    acc

                  link_prop, acc ->
                    Map.put(acc, link_prop.name, %{
                      __kind__: :property,
                      cardinality:
                        Utils.Cardinality.convert_cardinality(link_prop.real_cardinality),
                      target: make_type_lazy(link_prop.target_id, literal_fn)
                    })
                end)

              Map.put(shape, pointer.name, %{
                __kind__: :link,
                cardinality: Utils.Cardinality.convert_cardinality(pointer.real_cardinality),
                exclusive: pointer.is_exclusive,
                writable: pointer[:is_writable],
                target: make_type_lazy(pointer.target_id, literal_fn),
                properties: link_properties
              })

            "property" ->
              Map.put(shape, pointer.name, %{
                __kind__: :property,
                cardinality: Utils.Cardinality.convert_cardinality(pointer.real_cardinality),
                exclusive: pointer.is_exclusive,
                writable: pointer.is_writable,
                target: make_type_lazy(pointer.target_id, literal_fn)
              })
          end

        {shape, seen}
      end
    end)
  end

  defp get_all_ancestors(id, ancestors) do
    get_all_ancestors(id, ancestors, [])
  end

  defp get_all_ancestors(id, [[] | ancestors], processed) do
    get_all_ancestors(id, ancestors, processed)
  end

  defp get_all_ancestors(id, [anc | ancestors], processed) do
    anc_type = generated(Types).types()[anc.id]

    if anc_type.kind != "object" do
      raise RuntimeError, "not an object: #{id}"
    end

    get_all_ancestors(id, [ancestors | anc_type.bases], [anc_type | processed])
  end

  defp get_all_ancestors(_id, [], processed) do
    processed
  end

  # TODO: more optimized way to handle that
  defp fill_enum_fields(scalar, values, literal_fn) do
    fields =
      Enum.into(values, %{}, fn value ->
        enum_value =
          value
          |> Macro.underscore()
          |> String.to_existing_atom()

        {enum_value, literal_fn.(scalar, value)}
      end)

    Map.merge(scalar, fields)
  end

  defp make_type_lazy(id, literal_fn, anytype \\ nil) do
    fn ->
      make_type(id, literal_fn, anytype)
    end
  end
end
