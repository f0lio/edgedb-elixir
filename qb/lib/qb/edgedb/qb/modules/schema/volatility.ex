defmodule(QB.EdgeDB.QB.Modules.Schema.Volatility) do
  [
    (
      @atom_values [:immutable, :stable, :volatile]
      @string_values ["Immutable", "Stable", "Volatile"]
      def(__type__) do
        :enum
      end

      def(volatility()) do
        enum()
      end

      def(volatility(value) when value in @atom_values) do
        enum()[value]
      end

      def(volatility(value) when value in @string_values) do
        enum()[to_atom_value(value)]
      end

      [
        def(immutable()) do
          enum()[:immutable]
        end,
        def(stable()) do
          enum()[:stable]
        end,
        def(volatile()) do
          enum()[:volatile]
        end
      ]

      [
        defp(to_atom_value("Immutable")) do
          :immutable
        end,
        defp(to_atom_value("Stable")) do
          :stable
        end,
        defp(to_atom_value("Volatile")) do
          :volatile
        end
      ]

      defp(enum) do
        EdgeDB.QB.Reflection.Hydrate.make_type(
          "6c78662c-8a10-11ec-bcac-a9d500860e59",
          &EdgeDB.QB.Syntax.Literal.literal/2
        )
      end
    )
  ]
end