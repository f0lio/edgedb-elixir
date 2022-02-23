defmodule(QB.EdgeDB.QB.Modules.Sys.VersionStage) do
  [
    (
      @atom_values [:dev, :alpha, :beta, :rc, :final]
      @string_values ["dev", "alpha", "beta", "rc", "final"]
      def(__type__) do
        :enum
      end

      def(version_stage()) do
        enum()
      end

      def(version_stage(value) when value in @atom_values) do
        enum()[value]
      end

      def(version_stage(value) when value in @string_values) do
        enum()[to_atom_value(value)]
      end

      [
        def(dev()) do
          enum()[:dev]
        end,
        def(alpha()) do
          enum()[:alpha]
        end,
        def(beta()) do
          enum()[:beta]
        end,
        def(rc()) do
          enum()[:rc]
        end,
        def(final()) do
          enum()[:final]
        end
      ]

      [
        defp(to_atom_value("dev")) do
          :dev
        end,
        defp(to_atom_value("alpha")) do
          :alpha
        end,
        defp(to_atom_value("beta")) do
          :beta
        end,
        defp(to_atom_value("rc")) do
          :rc
        end,
        defp(to_atom_value("final")) do
          :final
        end
      ]

      defp(enum) do
        EdgeDB.QB.Reflection.Hydrate.make_type(
          "716199b4-8a10-11ec-b7a6-614310539b29",
          &EdgeDB.QB.Syntax.Literal.literal/2
        )
      end
    )
  ]
end