defmodule(QB.EdgeDB.QB.Modules.Default.Bag) do
  [
    (
      @properties [QB.EdgeDB.QB.Modules.Default.HasName, QB.EdgeDB.QB.Modules.Default.HasAge]
                  |> Enum.map(fn base -> base.__properties__() end)
                  |> Enum.concat([
                    :enumArr,
                    :bigintField,
                    :boolField,
                    :datetimeField,
                    :decimalField,
                    :durationField,
                    :float32Field,
                    :float64Field,
                    :genre,
                    :int16Field,
                    :int32Field,
                    :int64Field,
                    :localDateField,
                    :localDateTimeField,
                    :localTimeField,
                    :namedTuple,
                    :secret_identity,
                    :seqField,
                    :stringMultiArr,
                    :stringsArr,
                    :stringsMulti,
                    :unnamedTuple
                  ])
                  |> List.flatten()
      @link_properties [QB.EdgeDB.QB.Modules.Default.HasName, QB.EdgeDB.QB.Modules.Default.HasAge]
                       |> Enum.map(fn base -> base.__link_properties__() end)
                       |> Enum.concat([])
                       |> List.flatten()
      @links [QB.EdgeDB.QB.Modules.Default.HasName, QB.EdgeDB.QB.Modules.Default.HasAge]
             |> Enum.map(fn base -> base.__links__() end)
             |> Enum.concat([])
             |> List.flatten()
      @backlinks [QB.EdgeDB.QB.Modules.Default.HasName, QB.EdgeDB.QB.Modules.Default.HasAge]
                 |> Enum.map(fn base -> base.__backlinks__() end)
                 |> Enum.concat([])
                 |> List.flatten()
      @backlink_stubs [QB.EdgeDB.QB.Modules.Default.HasName, QB.EdgeDB.QB.Modules.Default.HasAge]
                      |> Enum.map(fn base -> base.__backlink_stubs__() end)
                      |> Enum.concat([])
                      |> List.flatten()
      (
        object_name = :bag
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
        object_name = :bag
        type_id = "c14a37c5-91d9-11ec-b156-01fed3d58c5f"

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