defmodule(QB.EdgeDB.QB.Modules.Schema.OperatorKind) do
  [
    (
      @atom_values [:infix, :postfix, :prefix, :ternary]
      @string_values ["Infix", "Postfix", "Prefix", "Ternary"]
      def(__type__) do
        :enum
      end

      def(operator_kind()) do
        enum()
      end

      def(operator_kind(value) when value in @atom_values) do
        enum()[value]
      end

      def(operator_kind(value) when value in @string_values) do
        enum()[to_atom_value(value)]
      end

      [
        def(infix()) do
          enum()[:infix]
        end,
        def(postfix()) do
          enum()[:postfix]
        end,
        def(prefix()) do
          enum()[:prefix]
        end,
        def(ternary()) do
          enum()[:ternary]
        end
      ]

      [
        defp(to_atom_value("Infix")) do
          :infix
        end,
        defp(to_atom_value("Postfix")) do
          :postfix
        end,
        defp(to_atom_value("Prefix")) do
          :prefix
        end,
        defp(to_atom_value("Ternary")) do
          :ternary
        end
      ]

      defp(enum) do
        EdgeDB.QB.Reflection.Hydrate.make_type(
          "6c77bd5a-8a10-11ec-83d6-6321f11c8a2d",
          &EdgeDB.QB.Syntax.Literal.literal/2
        )
      end
    )
  ]
end