defmodule EdgeDB.QB.Generation.Generators.OperatorTypesGenerator do
  alias EdgeDB.QB.Utils
  alias EdgeDB.QB.Generation
  alias EdgeDB.QB.Generation.Generators.FunctionsGenerator

  @skip_operators ~w(
    std::index
    std::slice
    std::destructure
  )

  @operator_kinds ~w(
    infix
    postfix
    prefix
    ternary
  )a

  @kind_to_arity %{
    infix: 2,
    postfix: 2,
    prefix: 1,
    ternary: 1
  }

  def generate(%{operators: operators, types: types, casts: casts}) do
    type_specificities = Utils.Functions.get_types_specificity(types, casts)

    overloads =
      Enum.into(@operator_kinds, %{}, fn kind ->
        {kind, %{}}
      end)

    {overloads, operator_funcs, _visited_operators} =
      Enum.reduce(operators, {overloads, [], MapSet.new()}, fn
        {op_name, _op_defs}, acc when op_name in @skip_operators ->
          acc

        {op_name, op_defs}, {overloads, operator_funcs, visited_operators} ->
          IO.inspect(op_defs, label: "#{op_name}")

          op_defs =
            op_defs
            |> Utils.Functions.sort_funcop_anytype_overloads(type_specificities)
            |> Utils.Functions.expand_funcop_anytype_overloads(types)

          operator = operator_from_name(op_name, op_defs)
          overloads = generate_operator_overloads(operator, op_defs, overloads)

          {operator_funcs, visited_operators} =
            op_defs
            |> possible_operator_kinds()
            |> Enum.reduce(
              {operator_funcs, visited_operators},
              fn kind, {operator_funcs, visited_operators} ->
                if MapSet.member?(visited_operators, {operator, kind}) do
                  {operator_funcs, visited_operators}
                else
                  operator_funcs = [generate_operator(op_name, operator, kind) | operator_funcs]
                  visited_operators = MapSet.put(visited_operators, {operator, kind})
                  {operator_funcs, visited_operators}
                end
              end
            )

          {overloads, operator_funcs, visited_operators}
      end)

    operator_funcs =
      operator_funcs
      |> Enum.sort(fn {arity1, _code1}, {arity2, _code2} ->
        arity1 <= arity2
      end)
      |> Enum.map(fn {_arity, code} ->
        code
      end)

    operator_handler = generate_operator_handler()

    code =
      quote do
        @overload_defs unquote(overloads)

        unquote(operator_funcs)
        unquote(operator_handler)
      end

    %Generation.Module{name: Generation.module_name(Operators), code: code}
  end

  defp possible_operator_kinds(op_defs) do
    op_defs
    |> Enum.map(fn op_def ->
      operator_kind(op_def.operator_kind)
    end)
    |> Enum.uniq()
  end

  defp generate_operator(op_name, operator, kind) do
    code =
      case kind do
        :infix ->
          quote do
            def operator(arg1, unquote(operator), arg2) do
              handle_operator(unquote(operator), [arg1, arg2])
            end
          end

        :prefix ->
          quote do
            def operator(unquote(operator), arg1) do
              handle_operator(unquote(operator), [arg1])
            end
          end

        :postfix ->
          quote do
            def operator(arg1, unquote(operator)) do
              handle_operator(unquote(operator), [arg1])
            end
          end

        :ternary when op_name == "std::if_else" ->
          quote do
            def operator(result_if_true, if: condition, else: result_if_false) do
              handle_operator(unquote(operator), [result_if_true, condition, result_if_false])
            end
          end
      end

    {@kind_to_arity[kind], code}
  end

  defp generate_operator_overloads(operator, op_defs, overloads) do
    {overloads, _index} =
      Enum.reduce(op_defs, {overloads, 0}, fn op_def, {overloads, overload_index} ->
        if op_def.overload_index == overload_index do
          overloads =
            update_in(overloads, [operator_kind(op_def.operator_kind), operator], fn value ->
              [FunctionsGenerator.generate_funcop_def(op_def) | value || []]
            end)

          {overloads, overload_index + 1}
        else
          {overloads, overload_index}
        end
      end)

    overloads
  end

  defp generate_operator_handler do
    quote do
      defp handle_operator(operator, args) do
        {defs, kind} =
          cond do
            length(args) == 1 and operator in @overload_defs.prefix ->
              {@overload_defs.prefix[operator], :prefix}

            length(args) == 1 and operator in @overload_defs.postfix ->
              {@overload_defs.postfix[operator], :postfix}

            length(args) == 2 ->
              {@overload_defs.infix[operator], :infix}

            length(args) == 3 ->
              {@overload_defs.ternary[operator], :ternary}
          end

        %{
          return_type: return_type,
          cardinality: cardinality,
          args: args
        } = EdgeDB.QB.Syntax.Funcops.resolve_overload(operator, args, defs)

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :operator,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: operator,
          __opkind__: kind,
          __args__: args
        })
      end
    end
  end

  defp operator_kind("Infix") do
    :infix
  end

  defp operator_kind("Postfix") do
    :postfix
  end

  defp operator_kind("Prefix") do
    :prefix
  end

  defp operator_kind("Ternary") do
    :ternary
  end

  defp operator_from_name("std::if_else", _op_defs) do
    :if_else
  end

  defp operator_from_name(_name, [%{original_name: original_name} | _rest]) do
    {_mod, name} = Utils.Generation.split_name(original_name)

    name
    |> String.downcase()
    |> String.to_atom()
  end
end
