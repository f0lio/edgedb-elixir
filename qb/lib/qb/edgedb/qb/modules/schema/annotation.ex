defmodule(QB.EdgeDB.QB.Modules.Schema.Annotation) do
  [
    (
      @properties [
                    QB.EdgeDB.QB.Modules.Schema.Object,
                    QB.EdgeDB.QB.Modules.Schema.InheritingObject
                  ]
                  |> Enum.map(fn base -> base.__properties__() end)
                  |> Enum.concat([:inheritable])
                  |> List.flatten()
      @link_properties [
                         QB.EdgeDB.QB.Modules.Schema.Object,
                         QB.EdgeDB.QB.Modules.Schema.InheritingObject
                       ]
                       |> Enum.map(fn base -> base.__link_properties__() end)
                       |> Enum.concat([])
                       |> List.flatten()
      @links [QB.EdgeDB.QB.Modules.Schema.Object, QB.EdgeDB.QB.Modules.Schema.InheritingObject]
             |> Enum.map(fn base -> base.__links__() end)
             |> Enum.concat([])
             |> List.flatten()
      @backlinks [
                   QB.EdgeDB.QB.Modules.Schema.Object,
                   QB.EdgeDB.QB.Modules.Schema.InheritingObject
                 ]
                 |> Enum.map(fn base -> base.__backlinks__() end)
                 |> Enum.concat([
                   :"<annotations[is schema::AnnotationSubject]",
                   :"<annotations[is sys::SystemObject]",
                   :"<annotations[is schema::CallableObject]",
                   :"<annotations[is schema::Function]",
                   :"<annotations[is schema::Operator]",
                   :"<annotations[is schema::Cast]",
                   :"<annotations[is schema::Migration]",
                   :"<annotations[is schema::Constraint]",
                   :"<annotations[is schema::ScalarType]",
                   :"<annotations[is schema::Index]",
                   :"<annotations[is schema::Alias]",
                   :"<annotations[is schema::Pointer]",
                   :"<annotations[is schema::Property]",
                   :"<annotations[is schema::Link]",
                   :"<annotations[is schema::ObjectType]",
                   :"<annotations[is sys::Role]",
                   :"<annotations[is sys::ExtensionPackage]",
                   :"<annotations[is schema::Extension]",
                   :"<annotations[is sys::Database]"
                 ])
                 |> List.flatten()
      @backlink_stubs [
                        QB.EdgeDB.QB.Modules.Schema.Object,
                        QB.EdgeDB.QB.Modules.Schema.InheritingObject
                      ]
                      |> Enum.map(fn base -> base.__backlink_stubs__() end)
                      |> Enum.concat([:"<annotations"])
                      |> List.flatten()
      (
        object_name = :annotation
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
        object_name = :annotation
        type_id = "6d740f6e-8a10-11ec-9b29-d15dc72dfc10"

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