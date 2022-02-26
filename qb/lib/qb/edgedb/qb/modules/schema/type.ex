defmodule(QB.EdgeDB.QB.Modules.Schema.Type) do
  [
    (
      @properties [
                    QB.EdgeDB.QB.Modules.Schema.SubclassableObject,
                    QB.EdgeDB.QB.Modules.Schema.AnnotationSubject
                  ]
                  |> Enum.map(fn base -> base.__properties__() end)
                  |> Enum.concat([:expr, :from_alias, :is_from_alias])
                  |> List.flatten()
      @link_properties [
                         QB.EdgeDB.QB.Modules.Schema.SubclassableObject,
                         QB.EdgeDB.QB.Modules.Schema.AnnotationSubject
                       ]
                       |> Enum.map(fn base -> base.__link_properties__() end)
                       |> Enum.concat([])
                       |> List.flatten()
      @links [
               QB.EdgeDB.QB.Modules.Schema.SubclassableObject,
               QB.EdgeDB.QB.Modules.Schema.AnnotationSubject
             ]
             |> Enum.map(fn base -> base.__links__() end)
             |> Enum.concat([])
             |> List.flatten()
      @backlinks [
                   QB.EdgeDB.QB.Modules.Schema.SubclassableObject,
                   QB.EdgeDB.QB.Modules.Schema.AnnotationSubject
                 ]
                 |> Enum.map(fn base -> base.__backlinks__() end)
                 |> Enum.concat([
                   :"<__type__[is std::BaseObject]",
                   :"<__type__[is std::Object]",
                   :"<__type__[is std::FreeObject]",
                   :"<__type__[is schema::Object]",
                   :"<__type__[is schema::SubclassableObject]",
                   :"<element_type[is schema::Array]",
                   :"<__type__[is schema::TupleElement]",
                   :"<type[is schema::TupleElement]",
                   :"<__type__[is schema::Delta]",
                   :"<__type__[is schema::AnnotationSubject]",
                   :"<__type__[is schema::InheritingObject]",
                   :"<type[is schema::Parameter]",
                   :"<return_type[is schema::CallableObject]",
                   :"<__type__[is schema::VolatilitySubject]",
                   :"<from_type[is schema::Cast]",
                   :"<type[is schema::Alias]",
                   :"<to_type[is schema::Cast]",
                   :"<target[is schema::Pointer]",
                   :"<__type__[is sys::SystemObject]",
                   :"<__type__[is cfg::ConfigObject]",
                   :"<__type__[is cfg::AuthMethod]",
                   :"<__type__[is cfg::Trust]",
                   :"<__type__[is cfg::SCRAM]",
                   :"<__type__[is cfg::Auth]",
                   :"<__type__[is cfg::AbstractConfig]",
                   :"<__type__[is cfg::Config]",
                   :"<__type__[is cfg::InstanceConfig]",
                   :"<__type__[is cfg::DatabaseConfig]",
                   :"<__type__[is schema::Annotation]",
                   :"<__type__[is schema::Type]",
                   :"<__type__[is schema::PrimitiveType]",
                   :"<__type__[is schema::CollectionType]",
                   :"<__type__[is schema::Array]",
                   :"<__type__[is schema::Tuple]",
                   :"<__type__[is schema::Parameter]",
                   :"<__type__[is schema::CallableObject]",
                   :"<__type__[is schema::Function]",
                   :"<return_type[is schema::Function]",
                   :"<__type__[is schema::Operator]",
                   :"<return_type[is schema::Operator]",
                   :"<__type__[is schema::Cast]",
                   :"<__type__[is schema::Migration]",
                   :"<__type__[is schema::Module]",
                   :"<__type__[is schema::Constraint]",
                   :"<return_type[is schema::Constraint]",
                   :"<__type__[is schema::ConsistencySubject]",
                   :"<__type__[is schema::ScalarType]",
                   :"<__type__[is schema::PseudoType]",
                   :"<__type__[is schema::Index]",
                   :"<__type__[is schema::Alias]",
                   :"<__type__[is schema::Pointer]",
                   :"<__type__[is schema::Property]",
                   :"<target[is schema::Property]",
                   :"<__type__[is schema::Source]",
                   :"<__type__[is schema::Link]",
                   :"<__type__[is schema::ObjectType]",
                   :"<__type__[is sys::Role]",
                   :"<__type__[is sys::ExtensionPackage]",
                   :"<__type__[is schema::Extension]",
                   :"<__type__[is sys::Database]",
                   :"<__type__[is HasAge]",
                   :"<__type__[is HasName]",
                   :"<__type__[is Bag]",
                   :"<__type__[is Person]",
                   :"<__type__[is Profile]",
                   :"<__type__[is Movie]",
                   :"<__type__[is Simple]",
                   :"<__type__[is Hero]",
                   :"<__type__[is Villain]",
                   :"<__type__[is MovieShape]"
                 ])
                 |> List.flatten()
      @backlink_stubs [
                        QB.EdgeDB.QB.Modules.Schema.SubclassableObject,
                        QB.EdgeDB.QB.Modules.Schema.AnnotationSubject
                      ]
                      |> Enum.map(fn base -> base.__backlink_stubs__() end)
                      |> Enum.concat([
                        :"<__type__",
                        :"<element_type",
                        :"<from_type",
                        :"<return_type",
                        :"<target",
                        :"<to_type",
                        :"<type"
                      ])
                      |> List.flatten()
      (
        object_name = :type
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
        object_name = :type
        type_id = "6c91fdfe-8a10-11ec-bacd-f11d47fae198"

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