defmodule(QB.EdgeDB.QB.Modules.Schema.ParameterKind) do
  [
    (
      @atom_values [:variadic_param, :named_only_param, :positional_param]
      @string_values ["VariadicParam", "NamedOnlyParam", "PositionalParam"]
      def(__type__) do
        :enum
      end

      def(parameter_kind()) do
        enum()
      end

      def(parameter_kind(value) when value in @atom_values) do
        enum()[value]
      end

      def(parameter_kind(value) when value in @string_values) do
        enum()[to_atom_value(value)]
      end

      [
        def(variadic_param()) do
          enum()[:variadic_param]
        end,
        def(named_only_param()) do
          enum()[:named_only_param]
        end,
        def(positional_param()) do
          enum()[:positional_param]
        end
      ]

      [
        defp(to_atom_value("VariadicParam")) do
          :variadic_param
        end,
        defp(to_atom_value("NamedOnlyParam")) do
          :named_only_param
        end,
        defp(to_atom_value("PositionalParam")) do
          :positional_param
        end
      ]

      defp(enum) do
        EdgeDB.QB.Reflection.Hydrate.make_type(
          "6c790fba-8a10-11ec-9202-93da54716b5c",
          &EdgeDB.QB.Syntax.Literal.literal/2
        )
      end
    )
  ]
end