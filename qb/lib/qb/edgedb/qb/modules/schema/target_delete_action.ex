defmodule(QB.EdgeDB.QB.Modules.Schema.TargetDeleteAction) do
  [
    (
      @atom_values [:restrict, :delete_source, :allow, :deferred_restrict]
      @string_values ["Restrict", "DeleteSource", "Allow", "DeferredRestrict"]
      def(__type__) do
        :enum
      end

      def(target_delete_action()) do
        enum()
      end

      def(target_delete_action(value) when value in @atom_values) do
        enum()[value]
      end

      def(target_delete_action(value) when value in @string_values) do
        enum()[to_atom_value(value)]
      end

      [
        def(restrict()) do
          enum()[:restrict]
        end,
        def(delete_source()) do
          enum()[:delete_source]
        end,
        def(allow()) do
          enum()[:allow]
        end,
        def(deferred_restrict()) do
          enum()[:deferred_restrict]
        end
      ]

      [
        defp(to_atom_value("Restrict")) do
          :restrict
        end,
        defp(to_atom_value("DeleteSource")) do
          :delete_source
        end,
        defp(to_atom_value("Allow")) do
          :allow
        end,
        defp(to_atom_value("DeferredRestrict")) do
          :deferred_restrict
        end
      ]

      defp(enum) do
        EdgeDB.QB.Reflection.Hydrate.make_type(
          "6c773110-8a10-11ec-bb4a-6992c067e64b",
          &EdgeDB.QB.Syntax.Literal.literal/2
        )
      end
    )
  ]
end