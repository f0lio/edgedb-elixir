defmodule(QB.EdgeDB.QB.Modules.Std.BaseObject) do
  [
    (
      @properties []
                  |> Enum.map(fn base -> base.__properties__() end)
                  |> Enum.concat([:id])
                  |> List.flatten()
      @link_properties []
                       |> Enum.map(fn base -> base.__link_properties__() end)
                       |> Enum.concat([])
                       |> List.flatten()
      @links []
             |> Enum.map(fn base -> base.__links__() end)
             |> Enum.concat([:__type__])
             |> List.flatten()
      @backlinks []
                 |> Enum.map(fn base -> base.__backlinks__() end)
                 |> Enum.concat([])
                 |> List.flatten()
      @backlink_stubs []
                      |> Enum.map(fn base -> base.__backlink_stubs__() end)
                      |> Enum.concat([])
                      |> List.flatten()
      (
        object_name = :base_object
        card = :many

        def(__new__) do
          obj = unquote(object_name)()

          obj
          |> EdgeDB.QB.Reflection.TypeSystem.to_set(unquote(card))
          |> EdgeDB.QB.Syntax.Path.path_node(nil, true)
        end
      )

      def(__type__) do
        :object
      end

      def(__properties__) do
        @properties
      end

      def(__link_properties__) do
        @link_properties
      end

      def(__links__) do
        @links
      end

      def(__backlinks__) do
        @backlinks
      end

      def(__backlink_stubs__) do
        @backlink_stubs
      end

      (
        object_name = :base_object
        type_id = "6c0851d6-8a10-11ec-87e9-c3313f204cf8"

        defp(unquote(object_name)()) do
          EdgeDB.QB.Reflection.Hydrate.make_type(
            unquote(type_id),
            &EdgeDB.QB.Syntax.Literal.literal/2
          )
        end
      )
    )
  ]
end