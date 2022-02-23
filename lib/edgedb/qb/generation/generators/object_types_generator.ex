defmodule EdgeDB.QB.Generation.Generators.ObjectTypeGenerator do
  alias EdgeDB.QB.Generation
  alias EdgeDB.QB.Utils

  @singlton_object_types MapSet.new(["std::FreeObject"])

  def generate(%{types: types}) do
    types
    |> Enum.map(fn {_id, type} ->
      type
    end)
    |> Enum.reject(fn
      %{kind: kind} when kind != "object" ->
        true

      type ->
        type.union_of != [] or type.intersection_of != []
    end)
    |> Enum.map(fn type ->
      {mod, name} = Utils.Generation.split_name(type.name)

      %Generation.Module{
        name: Generation.module_name(Modules, [mod, name]),
        code: generate_object(type, types)
      }
    end)
  end

  defp generate_object(type, types) do
    {_mod, name} = Utils.Generation.split_name(type.name)

    object_name =
      name
      |> Macro.underscore()
      |> String.downcase()
      |> String.to_atom()

    card =
      if type.name in @singlton_object_types do
        :one
      else
        :many
      end

    bases_modules =
      Enum.map(type.bases, fn base ->
        {mod, name} = Utils.Generation.split_name(types[base.id].name)
        Generation.module_name(Modules, [mod, name])
      end)

    properties =
      type.pointers
      |> Enum.filter(fn pointer ->
        pointer.kind == "property"
      end)
      |> Enum.map(fn pointer ->
        String.to_atom(pointer.name)
      end)

    link_properties =
      type.pointers
      |> Enum.filter(fn pointer ->
        pointer.kind == "property"
      end)
      |> Enum.map(fn pointer ->
        pointer.pointers
      end)
      |> List.flatten()
      |> Enum.reject(fn pointer ->
        pointer.name == "@target" or pointer.name == "@source"
      end)
      |> Enum.map(fn pointer ->
        String.to_atom(pointer.name)
      end)

    links =
      type.pointers
      |> Enum.filter(fn pointer ->
        pointer.kind == "link"
      end)
      |> Enum.map(fn pointer ->
        String.to_atom(pointer.name)
      end)

    backlinks =
      Enum.map(type.backlinks, fn pointer ->
        String.to_atom(pointer.name)
      end)

    backlink_stubs =
      Enum.map(type.backlink_stubs, fn pointer ->
        String.to_atom(pointer.name)
      end)

    object_constructor =
      quote bind_quoted: [object_name: object_name, type_id: type.id] do
        defp unquote(object_name)() do
          EdgeDB.QB.Reflection.Hydrate.make_type(
            unquote(type_id),
            &EdgeDB.QB.Syntax.Literal.literal/2
          )
        end
      end

    object_node_constructor =
      quote bind_quoted: [object_name: object_name, card: card] do
        def __new__ do
          obj = unquote(object_name)()

          obj
          |> EdgeDB.QB.Reflection.TypeSystem.to_set(unquote(card))
          |> EdgeDB.QB.Syntax.Path.path_node(nil, true)
        end
      end

    quote do
      @properties unquote(bases_modules)
                  |> Enum.map(fn base ->
                    base.__properties__()
                  end)
                  |> Enum.concat(unquote(properties))
                  |> List.flatten()

      @link_properties unquote(bases_modules)
                       |> Enum.map(fn base ->
                         base.__link_properties__()
                       end)
                       |> Enum.concat(unquote(link_properties))
                       |> List.flatten()

      @links unquote(bases_modules)
             |> Enum.map(fn base ->
               base.__links__()
             end)
             |> Enum.concat(unquote(links))
             |> List.flatten()

      @backlinks unquote(bases_modules)
                 |> Enum.map(fn base ->
                   base.__backlinks__()
                 end)
                 |> Enum.concat(unquote(backlinks))
                 |> List.flatten()

      @backlink_stubs unquote(bases_modules)
                      |> Enum.map(fn base ->
                        base.__backlink_stubs__()
                      end)
                      |> Enum.concat(unquote(backlink_stubs))
                      |> List.flatten()

      unquote(object_node_constructor)

      def __type__ do
        :object
      end

      def __properties__ do
        @properties
      end

      def __link_properties__ do
        @link_properties
      end

      def __links__ do
        @links
      end

      def __backlinks__ do
        @backlinks
      end

      def __backlink_stubs__ do
        @backlink_stubs
      end

      unquote(object_constructor)
    end
  end
end
