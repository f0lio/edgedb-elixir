defmodule(QB.EdgeDB.QB.Modules.Schema.TypeModifier) do
  [
    (
      @atom_values [:set_of_type, :optional_type, :singleton_type]
      @string_values ["SetOfType", "OptionalType", "SingletonType"]
      def(__type__) do
        :enum
      end

      def(type_modifier()) do
        enum()
      end

      def(type_modifier(value) when value in @atom_values) do
        enum()[value]
      end

      def(type_modifier(value) when value in @string_values) do
        enum()[to_atom_value(value)]
      end

      [
        def(set_of_type()) do
          enum()[:set_of_type]
        end,
        def(optional_type()) do
          enum()[:optional_type]
        end,
        def(singleton_type()) do
          enum()[:singleton_type]
        end
      ]

      [
        defp(to_atom_value("SetOfType")) do
          :set_of_type
        end,
        defp(to_atom_value("OptionalType")) do
          :optional_type
        end,
        defp(to_atom_value("SingletonType")) do
          :singleton_type
        end
      ]

      defp(enum) do
        EdgeDB.QB.Reflection.Hydrate.make_type(
          "6c79c94b-8a10-11ec-b4bd-5f942eec71f4",
          &EdgeDB.QB.Syntax.Literal.literal/2
        )
      end
    )
  ]
end