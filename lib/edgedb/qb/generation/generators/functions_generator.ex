defmodule EdgeDB.QB.Generation.Generators.FunctionsGenerator do
  alias EdgeDB.QB.Utils
  alias EdgeDB.QB.Generation

  # TODO: try to generate correct overloads

  def generate(%{functions: functions, types: types, casts: casts}) do
    type_specificities = Utils.Functions.get_types_specificity(types, casts)

    Enum.map(functions, fn {func_name, func_defs} ->
      func_defs =
        func_defs
        |> Utils.Functions.sort_funcop_anytype_overloads(type_specificities)
        |> Utils.Functions.expand_funcop_anytype_overloads(types)

      func_fqn = func_name
      {mod, func_name} = Utils.Generation.split_name(func_name)
      func_name = String.to_atom(func_name)

      %Generation.Module{
        name: Generation.module_name(Modules, mod),
        code: generate_function(func_fqn, func_name, func_defs)
      }
    end)
  end

  defp generate_function(func_fqn, func_name, func_defs) do
    funcop_overloads = generate_funcop_defs(func_defs)

    quote do
      def unquote(func_name)(args \\ []) do
        %{
          return_type: return_type,
          cardinality: cardinality,
          args: args,
          named_args: named_args
        } =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(
            unquote(func_fqn),
            args,
            unquote(funcop_overloads)
          )

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: unquote(func_name),
          __args__: args,
          __named_args__: named_args
        })
      end
    end
  end

  defp generate_funcop_defs(func_defs) do
    {funcop_defs, _index} =
      Enum.reduce(func_defs, {[], 0}, fn func_def, {acc, overload_index} ->
        if func_def.overload_index != overload_index do
          {acc, overload_index}
        else
          {[generate_funcop_def(func_def) | acc], overload_index + 1}
        end
      end)

    Enum.reverse(funcop_defs)
  end

  def generate_funcop_def(%{params: params} = func_def) do
    args_def =
      Enum.map(params.positional, fn param ->
        get_arg_spec(param)
      end)

    named_args_def =
      Enum.into(params.named, %{}, fn param ->
        {param.name, get_arg_spec(param)}
      end)

    return_typemod =
      if func_def.return_typemod == "SingletonType" do
        nil
      else
        func_def.return_typemod
      end

    %{
      args: args_def,
      named_args: named_args_def,
      return_type_id: func_def.return_type.id,
      return_typemod: return_typemod,
      preserves_optionality: func_def[:preserves_optionality]
    }
  end

  defp get_arg_spec(param) do
    optional? = param.typemod == "OptionalType" or param[:has_default]
    set_of_type? = param.typemod == "SetOfType"
    variadic? = param.kind == "VariadicParam"

    %{
      type_id: param.type.id,
      optional: optional?,
      set_of_type: set_of_type?,
      variadic: variadic?
    }
  end
end
