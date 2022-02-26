defmodule EdgeDB.QB.Generation.Generators.FunctionsGenerator do
  alias EdgeDB.QB.Utils
  alias EdgeDB.QB.Generation

  def generate(%{functions: functions, types: types, casts: casts}) do
    generate_funcop_types(types, casts, functions, true, fn func_name, _funcop_defs ->
      quote do
        %{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: unquote(func_name),
          __args__: positional,
          __named_args__: named_args
        }
      end
    end)
  end

  def generate_funcop_types(types, casts, funcops, optional_nil, build_result_fn) do
    type_specificities = Utils.Functions.get_types_specificity(types, casts)

    Enum.map(funcops, fn {func_name, func_defs} ->
      func_defs =
        func_defs
        |> Utils.Functions.sort_funcop_anytype_overloads(type_specificities)
        |> Utils.Functions.expand_funcop_anytype_overloads(types)

      func_fqn = func_name
      {mod, func_name} = Utils.Generation.split_name(func_name)
      func_name = String.to_atom(func_name)

      functions =
        Enum.map(func_defs, fn func_def ->
          generate_function(func_name, func_def, optional_nil)
        end)

      %Generation.Module{
        name: Generation.module_name(Modules, mod),
        code: functions ++ [generate_executor(func_fqn, func_name, func_defs, build_result_fn)]
      }
    end)
  end

  defp generate_function(func_name, %{params: params} = func_def, optional_nil) do
    execute_fn_name = String.to_atom("execute_#{func_name}")

    has_params? = params.positional != [] or params.named != []

    named_params_overloads =
      cond do
        not has_params? or params.positional == [] or
            Enum.find(params.named, fn param ->
              not (param.typemod == "OptionalType" or param.has_default)
            end) ->
          [true]

        params.named != [] ->
          [true, false]

        true ->
          [false]
      end

    Enum.map(named_params_overloads, fn has_named_params? ->
      fn_params =
        Enum.reduce(params.positional, [], fn param, fn_params ->
          [build_param_ast(param, optional_nil) | fn_params]
        end)

      fn_params =
        if has_named_params? do
          [build_named_params_ast() | fn_params]
        else
          fn_params
        end

      fn_params = Enum.reverse(fn_params)

      args = extract_runtime_args_from_params(fn_params, has_named_params?)

      quote do
        @doc unquote(func_def.description || "")
        def unquote(func_name)(unquote_splicing(fn_params)) do
          unquote(execute_fn_name)(unquote(args))
        end
      end
    end)
  end

  defp generate_executor(func_fqn, func_name, func_defs, build_result_fn) do
    execute_fn_name = String.to_atom("execute_#{func_name}")
    funcop_overloads = generate_funcop_defs(func_defs)
    result_ast = build_result_fn.(func_fqn, func_defs)

    quote do
      defp unquote(execute_fn_name)(positional \\ [], named \\ []) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(
            unquote(func_name),
            positional,
            named,
            unquote(funcop_overloads)
          )

        EdgeDB.QB.Syntax.Path.to_expression(unquote(result_ast))
      end
    end
  end

  defp build_param_ast(param, optional_nil) do
    param_ast = build_arg_ast(param)

    default =
      if param.kind == "VariadicParam" do
        []
      else
        :__edgedb_default__
      end

    if optional_nil and (param.typemod == "OptionalType" or param.has_default) do
      {:\\, [], [param_ast, default]}
    else
      param_ast
    end
  end

  defp build_named_params_ast do
    {:\\, [], [{:edgedb_elixir_named_arguments, [], Elixir}, []]}
  end

  defp extract_runtime_args_from_params(params, has_named_params?) do
    extract_runtime_args_from_params(params, has_named_params?, [])
  end

  defp extract_runtime_args_from_params([param], true, args) do
    extract_runtime_args_from_params([], true, [extract_arg_name_from_param(param), args])
  end

  defp extract_runtime_args_from_params([param | params], has_named_params?, args) do
    args = [extract_arg_name_from_param(param) | args]
    extract_runtime_args_from_params(params, has_named_params?, args)
  end

  defp extract_runtime_args_from_params([], _has_named_params?, args) do
    Enum.reverse(args)
  end

  defp build_arg_ast(param) do
    {String.to_atom(param.name), [], Elixir}
  end

  defp extract_arg_name_from_param(param) do
    IO.inspect(param)

    case param do
      {:\\, _default_bindings, [arg, _default]} ->
        arg

      arg ->
        arg
    end
  end

  defp generate_funcop_defs(func_defs) do
    {funcop_defs, _index} =
      Enum.reduce(func_defs, {[], 0}, fn func_def, {acc, overload_index} ->
        if func_def.overload_index != overload_index do
          {acc, overload_index}
        else
          {[generate_funcop_def(func_def) | acc], overload_index}
        end
      end)

    Enum.reverse(funcop_defs)
  end

  defp generate_funcop_def(%{params: params} = func_def) do
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

    quote do
      %{
        args: unquote(args_def),
        named_args: unquote(named_args_def),
        return_type_id: unquote(func_def.return_type.id),
        return_typemod: unquote(return_typemod),
        preserves_optionality: unquote(func_def.preserves_optionality)
      }
    end
  end

  defp get_arg_spec(param) do
    optional? = param.typemod == "OptionalType" or param.has_default
    set_of_type? = param.typemod == "SetOfType"
    variadic? = param.kind == "VariadicParam"

    quote do
      %{
        type_id: unquote(param.type.id),
        optional: unquote(optional?),
        set_of_type: unquote(set_of_type?),
        variadic: unquote(variadic?)
      }
    end
  end
end
