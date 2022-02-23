defmodule(QB.EdgeDB.QB.Modules.Schema.Cardinality) do
  [
    (
      @atom_values [:one, :many]
      @string_values ["One", "Many"]
      def(__type__) do
        :enum
      end

      def(cardinality()) do
        enum()
      end

      def(cardinality(value) when value in @atom_values) do
        enum()[value]
      end

      def(cardinality(value) when value in @string_values) do
        enum()[to_atom_value(value)]
      end

      [
        def(one()) do
          enum()[:one]
        end,
        def(many()) do
          enum()[:many]
        end
      ]

      [
        defp(to_atom_value("One")) do
          :one
        end,
        defp(to_atom_value("Many")) do
          :many
        end
      ]

      defp(enum) do
        EdgeDB.QB.Reflection.Hydrate.make_type(
          "6c76a6a4-8a10-11ec-a6ac-7bbb13b222ae",
          &EdgeDB.QB.Syntax.Literal.literal/2
        )
      end
    )
  ]
end