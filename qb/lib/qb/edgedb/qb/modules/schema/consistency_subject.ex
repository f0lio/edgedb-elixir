defmodule(QB.EdgeDB.QB.Modules.Schema.ConsistencySubject) do
  [
    (
      @properties [
                    QB.EdgeDB.QB.Modules.Schema.Object,
                    QB.EdgeDB.QB.Modules.Schema.InheritingObject,
                    QB.EdgeDB.QB.Modules.Schema.AnnotationSubject
                  ]
                  |> Enum.map(fn base -> base.__properties__() end)
                  |> Enum.concat([])
                  |> List.flatten()
      @link_properties [
                         QB.EdgeDB.QB.Modules.Schema.Object,
                         QB.EdgeDB.QB.Modules.Schema.InheritingObject,
                         QB.EdgeDB.QB.Modules.Schema.AnnotationSubject
                       ]
                       |> Enum.map(fn base -> base.__link_properties__() end)
                       |> Enum.concat([])
                       |> List.flatten()
      @links [
               QB.EdgeDB.QB.Modules.Schema.Object,
               QB.EdgeDB.QB.Modules.Schema.InheritingObject,
               QB.EdgeDB.QB.Modules.Schema.AnnotationSubject
             ]
             |> Enum.map(fn base -> base.__links__() end)
             |> Enum.concat([:constraints])
             |> List.flatten()
      @backlinks [
                   QB.EdgeDB.QB.Modules.Schema.Object,
                   QB.EdgeDB.QB.Modules.Schema.InheritingObject,
                   QB.EdgeDB.QB.Modules.Schema.AnnotationSubject
                 ]
                 |> Enum.map(fn base -> base.__backlinks__() end)
                 |> Enum.concat([:"<subject[is schema::Constraint]"])
                 |> List.flatten()
      @backlink_stubs [
                        QB.EdgeDB.QB.Modules.Schema.Object,
                        QB.EdgeDB.QB.Modules.Schema.InheritingObject,
                        QB.EdgeDB.QB.Modules.Schema.AnnotationSubject
                      ]
                      |> Enum.map(fn base -> base.__backlink_stubs__() end)
                      |> Enum.concat([:"<subject"])
                      |> List.flatten()
      (
        object_name = :consistency_subject
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
        object_name = :consistency_subject
        type_id = "6e765f11-8a10-11ec-a861-d9b160ab5324"

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