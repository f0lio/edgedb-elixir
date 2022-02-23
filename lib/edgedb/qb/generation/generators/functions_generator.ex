defmodule EdgeDB.QB.Generation.Generators.FunctionsGenerator do
  alias EdgeDB.QB.Utils
  alias EdgeDB.QB.Generation

  def generate(%{functions: functions, types: types, casts: casts}) do
    generate_funcop_types(types, casts, functions, true, fn func_name, _funcop_defs ->
      nil
    end)
  end

  def generate_funcop_types(types, casts, funcops, optional_undefined, return_elements_fn) do
    Enum.map(funcops, fn {func_name, func_defs} ->
      {mod, func_name} = Utils.Generation.split_name(func_name)

      functions =
        Enum.map(func_defs, fn func_def ->
          generate_function(func_name, func_def)
        end)

      %Generation.Module{
        name: Generation.module_name(Modules, mod),
        code: functions ++ [generate_executor(func_name)]
      }
    end)
  end

  defp generate_function(func_name, %{params: [], named: []} = func_def) do
    execute_fn_name = String.to_atom("execute_#{func_name}")

    quote do
      @doc unquote(func_def.description)
      def unquote(func_name)() do
        unquote(execute_fn_name)([])
      end
    end
  end

  defp generate_function(func_name, func_def) do
    execute_fn_name = String.to_atom("execute_#{func_name}")

    quote do
      @doc unquote(func_def.description)
      def unquote(func_name)() do
        unquote(execute_fn_name)([])
      end
    end
  end

  defp generate_executor(func_name) do
    execute_fn_name = String.to_atom("execute_#{func_name}")

    quote bind_quoted: [execute_fn_name: execute_fn_name] do
      defp unquote(execute_fn_name)(args) do
      end
    end
  end
end
