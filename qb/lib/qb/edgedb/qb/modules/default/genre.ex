defmodule(QB.EdgeDB.QB.Modules.Default.Genre) do
  [
    (
      @atom_values [:horror, :action, :rom_com]
      @string_values ["Horror", "Action", "RomCom"]
      def(__type__) do
        :enum
      end

      def(genre()) do
        enum()
      end

      def(genre(value) when value in @atom_values) do
        enum()[value]
      end

      def(genre(value) when value in @string_values) do
        enum()[to_atom_value(value)]
      end

      [
        def(horror()) do
          enum()[:horror]
        end,
        def(action()) do
          enum()[:action]
        end,
        def(rom_com()) do
          enum()[:rom_com]
        end
      ]

      [
        defp(to_atom_value("Horror")) do
          :horror
        end,
        defp(to_atom_value("Action")) do
          :action
        end,
        defp(to_atom_value("RomCom")) do
          :rom_com
        end
      ]

      defp(enum) do
        EdgeDB.QB.Reflection.Hydrate.make_type(
          "c147374c-91d9-11ec-8299-e1261ccaa9bc",
          &EdgeDB.QB.Syntax.Literal.literal/2
        )
      end
    )
  ]
end