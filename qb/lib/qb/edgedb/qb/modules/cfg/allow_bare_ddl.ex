defmodule(QB.EdgeDB.QB.Modules.Cfg.AllowBareDDL) do
  [
    (
      @atom_values [:always_allow, :never_allow]
      @string_values ["AlwaysAllow", "NeverAllow"]
      def(__type__) do
        :enum
      end

      def(allow_bare_ddl()) do
        enum()
      end

      def(allow_bare_ddl(value) when value in @atom_values) do
        enum()[value]
      end

      def(allow_bare_ddl(value) when value in @string_values) do
        enum()[to_atom_value(value)]
      end

      [
        def(always_allow()) do
          enum()[:always_allow]
        end,
        def(never_allow()) do
          enum()[:never_allow]
        end
      ]

      [
        defp(to_atom_value("AlwaysAllow")) do
          :always_allow
        end,
        defp(to_atom_value("NeverAllow")) do
          :never_allow
        end
      ]

      defp(enum) do
        EdgeDB.QB.Reflection.Hydrate.make_type(
          "72506084-8a10-11ec-be6c-41dfc4790203",
          &EdgeDB.QB.Syntax.Literal.literal/2
        )
      end
    )
  ]
end