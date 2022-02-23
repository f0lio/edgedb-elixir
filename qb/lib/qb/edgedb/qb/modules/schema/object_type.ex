defmodule(QB.EdgeDB.QB.Modules.Schema.ObjectType) do
  [
    (
      @properties [
                    QB.EdgeDB.QB.Modules.Schema.InheritingObject,
                    QB.EdgeDB.QB.Modules.Schema.ConsistencySubject,
                    QB.EdgeDB.QB.Modules.Schema.AnnotationSubject,
                    QB.EdgeDB.QB.Modules.Schema.Type,
                    QB.EdgeDB.QB.Modules.Schema.Source
                  ]
                  |> Enum.map(fn base -> base.__properties__() end)
                  |> Enum.concat([:compound_type, :is_compound_type])
                  |> List.flatten()
      @link_properties [
                         QB.EdgeDB.QB.Modules.Schema.InheritingObject,
                         QB.EdgeDB.QB.Modules.Schema.ConsistencySubject,
                         QB.EdgeDB.QB.Modules.Schema.AnnotationSubject,
                         QB.EdgeDB.QB.Modules.Schema.Type,
                         QB.EdgeDB.QB.Modules.Schema.Source
                       ]
                       |> Enum.map(fn base -> base.__link_properties__() end)
                       |> Enum.concat([])
                       |> List.flatten()
      @links [
               QB.EdgeDB.QB.Modules.Schema.InheritingObject,
               QB.EdgeDB.QB.Modules.Schema.ConsistencySubject,
               QB.EdgeDB.QB.Modules.Schema.AnnotationSubject,
               QB.EdgeDB.QB.Modules.Schema.Type,
               QB.EdgeDB.QB.Modules.Schema.Source
             ]
             |> Enum.map(fn base -> base.__links__() end)
             |> Enum.concat([:union_of, :intersection_of, :links, :properties])
             |> List.flatten()
      @backlinks [
                   QB.EdgeDB.QB.Modules.Schema.InheritingObject,
                   QB.EdgeDB.QB.Modules.Schema.ConsistencySubject,
                   QB.EdgeDB.QB.Modules.Schema.AnnotationSubject,
                   QB.EdgeDB.QB.Modules.Schema.Type,
                   QB.EdgeDB.QB.Modules.Schema.Source
                 ]
                 |> Enum.map(fn base -> base.__backlinks__() end)
                 |> Enum.concat([
                   :"<union_of[is schema::ObjectType]",
                   :"<intersection_of[is schema::ObjectType]",
                   :"<target[is schema::Link]"
                 ])
                 |> List.flatten()
      @backlink_stubs [
                        QB.EdgeDB.QB.Modules.Schema.InheritingObject,
                        QB.EdgeDB.QB.Modules.Schema.ConsistencySubject,
                        QB.EdgeDB.QB.Modules.Schema.AnnotationSubject,
                        QB.EdgeDB.QB.Modules.Schema.Type,
                        QB.EdgeDB.QB.Modules.Schema.Source
                      ]
                      |> Enum.map(fn base -> base.__backlink_stubs__() end)
                      |> Enum.concat([:"<intersection_of", :"<target", :"<union_of"])
                      |> List.flatten()
      (
        object_name = :object_type
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
        object_name = :object_type
        type_id = "6f60f97a-8a10-11ec-89c8-bfc584a2e355"

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