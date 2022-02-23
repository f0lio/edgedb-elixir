defmodule EdgeDB.QB.Generation.Generators.TypesGenerator do
  alias EdgeDB.QB.Generation

  def generate(%{types: types}) do
    types_def = define_types(types)
    types_fn_def = define_types_fn()

    code =
      quote do
        unquote(types_def)
        unquote(types_fn_def)
      end

    %EdgeDB.QB.Generation.Module{name: Generation.module_name(Types), code: code}
  end

  defp define_types(types) do
    quote do
      @types unquote(types)
    end
  end

  defp define_types_fn do
    quote do
      def types do
        @types
      end
    end
  end
end
