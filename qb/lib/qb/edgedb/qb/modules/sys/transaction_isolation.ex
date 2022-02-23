defmodule(QB.EdgeDB.QB.Modules.Sys.TransactionIsolation) do
  [
    (
      @atom_values [:repeatable_read, :serializable]
      @string_values ["RepeatableRead", "Serializable"]
      def(__type__) do
        :enum
      end

      def(transaction_isolation()) do
        enum()
      end

      def(transaction_isolation(value) when value in @atom_values) do
        enum()[value]
      end

      def(transaction_isolation(value) when value in @string_values) do
        enum()[to_atom_value(value)]
      end

      [
        def(repeatable_read()) do
          enum()[:repeatable_read]
        end,
        def(serializable()) do
          enum()[:serializable]
        end
      ]

      [
        defp(to_atom_value("RepeatableRead")) do
          :repeatable_read
        end,
        defp(to_atom_value("Serializable")) do
          :serializable
        end
      ]

      defp(enum) do
        EdgeDB.QB.Reflection.Hydrate.make_type(
          "7160f52a-8a10-11ec-9ce7-e363b6134179",
          &EdgeDB.QB.Syntax.Literal.literal/2
        )
      end
    )
  ]
end