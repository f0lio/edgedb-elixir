defmodule(QB.EdgeDB.QB.Modules.Schema.Constraint) do
  [
    (
      @properties [
                    QB.EdgeDB.QB.Modules.Schema.CallableObject,
                    QB.EdgeDB.QB.Modules.Schema.InheritingObject
                  ]
                  |> Enum.map(fn base -> base.__properties__() end)
                  |> Enum.concat([:expr, :subjectexpr, :finalexpr, :errmessage, :delegated])
                  |> List.flatten()
      @link_properties [
                         QB.EdgeDB.QB.Modules.Schema.CallableObject,
                         QB.EdgeDB.QB.Modules.Schema.InheritingObject
                       ]
                       |> Enum.map(fn base -> base.__link_properties__() end)
                       |> Enum.concat([])
                       |> List.flatten()
      @links [
               QB.EdgeDB.QB.Modules.Schema.CallableObject,
               QB.EdgeDB.QB.Modules.Schema.InheritingObject
             ]
             |> Enum.map(fn base -> base.__links__() end)
             |> Enum.concat([:params, :subject])
             |> List.flatten()
      @backlinks [
                   QB.EdgeDB.QB.Modules.Schema.CallableObject,
                   QB.EdgeDB.QB.Modules.Schema.InheritingObject
                 ]
                 |> Enum.map(fn base -> base.__backlinks__() end)
                 |> Enum.concat([
                   :"<constraints[is schema::ConsistencySubject]",
                   :"<constraints[is schema::ScalarType]",
                   :"<constraints[is schema::Pointer]",
                   :"<constraints[is schema::Property]",
                   :"<constraints[is schema::Link]",
                   :"<constraints[is schema::ObjectType]"
                 ])
                 |> List.flatten()
      @backlink_stubs [
                        QB.EdgeDB.QB.Modules.Schema.CallableObject,
                        QB.EdgeDB.QB.Modules.Schema.InheritingObject
                      ]
                      |> Enum.map(fn base -> base.__backlink_stubs__() end)
                      |> Enum.concat([:"<constraints"])
                      |> List.flatten()
      (
        object_name = :constraint
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
        object_name = :constraint
        type_id = "6e01f436-8a10-11ec-9117-0f2b60a3b4d5"

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