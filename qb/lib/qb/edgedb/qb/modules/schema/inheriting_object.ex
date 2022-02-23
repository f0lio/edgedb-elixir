defmodule(QB.EdgeDB.QB.Modules.Schema.InheritingObject) do
  [
    (
      @properties [QB.EdgeDB.QB.Modules.Schema.SubclassableObject]
                  |> Enum.map(fn base -> base.__properties__() end)
                  |> Enum.concat([:inherited_fields])
                  |> List.flatten()
      @link_properties [QB.EdgeDB.QB.Modules.Schema.SubclassableObject]
                       |> Enum.map(fn base -> base.__link_properties__() end)
                       |> Enum.concat([])
                       |> List.flatten()
      @links [QB.EdgeDB.QB.Modules.Schema.SubclassableObject]
             |> Enum.map(fn base -> base.__links__() end)
             |> Enum.concat([:bases, :ancestors])
             |> List.flatten()
      @backlinks [QB.EdgeDB.QB.Modules.Schema.SubclassableObject]
                 |> Enum.map(fn base -> base.__backlinks__() end)
                 |> Enum.concat([
                   :"<bases[is schema::InheritingObject]",
                   :"<ancestors[is schema::InheritingObject]",
                   :"<bases[is schema::Constraint]",
                   :"<ancestors[is schema::Constraint]",
                   :"<bases[is schema::ScalarType]",
                   :"<ancestors[is schema::ScalarType]",
                   :"<bases[is schema::Pointer]",
                   :"<ancestors[is schema::Pointer]",
                   :"<bases[is schema::Property]",
                   :"<ancestors[is schema::Property]",
                   :"<bases[is schema::Link]",
                   :"<ancestors[is schema::Link]",
                   :"<bases[is schema::ObjectType]",
                   :"<ancestors[is schema::ObjectType]"
                 ])
                 |> List.flatten()
      @backlink_stubs [QB.EdgeDB.QB.Modules.Schema.SubclassableObject]
                      |> Enum.map(fn base -> base.__backlink_stubs__() end)
                      |> Enum.concat([:"<ancestors", :"<bases"])
                      |> List.flatten()
      (
        object_name = :inheriting_object
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
        object_name = :inheriting_object
        type_id = "6d9b4271-8a10-11ec-9398-c1997d33e06f"

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