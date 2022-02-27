defmodule EdgeDB.QB.Syntax.Funcops do
  import EdgeDB.QB.Runtime

  alias EdgeDB.QB.Generation
  alias EdgeDB.QB.Utils
  alias EdgeDB.QB.Reflection.Hydrate

  alias EdgeDB.QB.Syntax.{
    Literal,
    Cast
  }

  def resolve_overload(func_name, args, func_defs) do
    {positional_args, named_args} =
      if Keyword.keyword?(args) do
        {[], args}
      else
        split_args_into_list_and_keyword(args)
      end

    positional_args = map_literal_to_type_set(positional_args)
    named_args = map_literal_to_type_set(named_args)

    resolved_overload =
      Enum.reduce_while(func_defs, nil, fn func_def, nil ->
        resolved_overload = try_overload(func_name, positional_args, named_args, func_def)

        if resolved_overload do
          {:halt, resolved_overload}
        else
          {:cont, nil}
        end
      end)

    if is_nil(resolved_overload) do
      func_name =
        case String.split(func_name, "::") do
          [module, func_name] ->
            "#{Generation.module_name(Modules, module)}.#{func_name}/1"

          _result ->
            "operator #{inspect(func_name)}"
        end

      raise RuntimeError,
            "no function overload found for #{func_name} with args: #{inspect(args)}"
    end

    resolved_overload
  end

  defp try_overload(func_name, args, named_args, func_def) do
    with :ok <- check_overload_requried_named_args(named_args, func_def.named_args),
         :ok <- check_overload_optional_named_args(named_args, func_def.named_args),
         :ok <- check_overload_variadic_param(args, func_def.args),
         param_cardinalities = [:one],
         {:ok, param_cardinalities} <-
           compute_cardinalties_for_named_args(param_cardinalities, named_args, func_def),
         {:ok, {positional_args, param_cardinalities, anytype}} <-
           compute_cardinalties_for_args(param_cardinalities, args, func_def) do
      cardinality = resolve_cardinality(func_name, positional_args, param_cardinalities, func_def)

      IO.inspect({func_def.return_type_id, anytype})

      %{
        return_type: Hydrate.make_type(func_def.return_type_id, &Literal.literal/2, anytype),
        cardinality: cardinality,
        args: positional_args,
        named_args: named_args
      }
    else
      _other ->
        nil
    end
  end

  defp resolve_cardinality(func_name, positional_args, param_cardinalities, func_def) do
    cond do
      func_name == :if_else ->
        [arg0, arg1, arg2 | _rest] = positional_args

        arg0.__cardinality__
        |> Utils.Cardinality.or_cardinalities(arg2.__cardinality__)
        |> Utils.Cardinality.multiply_cardinalities(arg1.__cardinality__)

      func_name == "std::assert_exists" ->
        [arg0 | _rest] = positional_args
        Utils.Cardinality.override_lower_bound(arg0.__cardinality__, :one)

      true ->
        cardinality =
          if func_def.return_typemod == "SetOfType" do
            :many
          else
            Utils.Cardinality.multiply_cardinalities_variadic(param_cardinalities)
          end

        if func_def[:return_typemod] == "SetOfType" and !func_def[:preserves_optionality] do
          Utils.Cardinality.override_lower_bound(cardinality, :zero)
        else
          cardinality
        end
    end
  end

  defp compute_cardinalties_for_named_args(param_cardinalities, named_args, func_def) do
    param_cardinalities =
      Enum.reduce_while(
        named_args,
        param_cardinalities,
        fn {key, value}, param_cardinalities ->
          key = to_string(key)
          arg_def = func_def.named_args[key]

          if not arg_def or not compare_type(arg_def.type_id, value.__element__).match do
            {:halt, nil}
          else
            cardinality =
              cond do
                arg_def.set_of_type ->
                  if func_def[:preserves_optionality] do
                    Utils.Cardinality.override_upper_bound(value.__cardinality__, :one)
                  else
                    :one
                  end

                arg_def.optional ->
                  Utils.Cardinality.override_lower_bound(value.__cardinality__, :one)

                true ->
                  value.__cardinality__
              end

            {:cont, [cardinality | param_cardinalities]}
          end
        end
      )

    if param_cardinalities do
      {:ok, Enum.reverse(param_cardinalities)}
    else
      :error
    end
  end

  defp compute_cardinalties_for_args(param_cardinalities, args, func_def) do
    result =
      Enum.reduce_while(
        0..(length(args) - 1),
        {[], [], nil},
        fn index, {positional_args, positional_param_cardinalities, return_anytype} ->
          arg = Enum.at(args, index)
          arg_def = Enum.at(func_def.args, index)

          if is_nil(arg) do
            if not arg_def.optional do
              {:halt, nil}
            else
              if index < length(args) do
                arg_type = Hydrate.make_type(arg_def.type_id, &Literal.literal/2)

                {:cont,
                 {[Cast.cast(arg_type, nil) | positional_args], positional_param_cardinalities,
                  return_anytype}}
              else
                {:cont, {positional_args, positional_param_cardinalities, return_anytype}}
              end
            end
          else
            result = compare_type(arg_def.type_id, arg.__element__)

            return_anytype =
              if is_nil(return_anytype) and not is_nil(result[:anytype]) do
                result[:anytype]
              else
                return_anytype
              end

            positional_args =
              if arg_def.variadic do
                args
                |> Enum.slice(index)
                |> Enum.concat(positional_args)
              else
                [arg | positional_args]
              end

            cond do
              not result.match ->
                {:halt, nil}

              arg_def.set_of_type ->
                cardinality =
                  if func_def[:preserves_optionality] do
                    Utils.Cardinality.override_upper_bound(arg.__cardinality__, :one)
                  else
                    :one
                  end

                {:cont,
                 {positional_args, [cardinality | positional_param_cardinalities], return_anytype}}

              true ->
                cardinality =
                  if arg_def.variadic do
                    args
                    |> Enum.slice(index)
                    |> Enum.map(fn element ->
                      element.__cardinality__
                    end)
                    |> Utils.Cardinality.multiply_cardinalities_variadic()
                  else
                    arg.__cardinality__
                  end

                {:cont,
                 {positional_args, [cardinality | positional_param_cardinalities], return_anytype}}
            end
          end
        end
      )

    case result do
      nil ->
        :error

      {args, positional_param_cardinalities, anytype} ->
        {:ok,
         {Enum.reverse(args), param_cardinalities ++ Enum.reverse(positional_param_cardinalities),
          anytype}}
    end
  end

  defp check_overload_requried_named_args(named_args, func_named_args) do
    if func_named_args == [] and named_args != [] do
      :error
    else
      :ok
    end
  end

  defp check_overload_optional_named_args(named_args, func_named_args) do
    not_all_named_optional? =
      func_named_args
      |> Map.values()
      |> Enum.all?(fn arg ->
        not arg.optional
      end)

    if named_args == [] and map_size(func_named_args) != 0 and not_all_named_optional? do
      :error
    else
      :ok
    end
  end

  defp check_overload_variadic_param(args, func_args) do
    last_param = List.last(func_args)

    last_param_variadic? =
      if last_param do
        last_param.variadic
      else
        false
      end

    if not last_param_variadic? and length(args) > length(func_args) do
      :error
    else
      :ok
    end
  end

  defp map_literal_to_type_set(args) do
    Enum.map(args, fn
      {key, value} ->
        value =
          if value do
            generated(CastMaps).literal_to_type_set(value)
          else
            value
          end

        {key, value}

      value ->
        if value do
          generated(CastMaps).literal_to_type_set(value)
        else
          value
        end
    end)
  end

  defp split_args_into_list_and_keyword(args) do
    {args, named} =
      Enum.reduce(args, {[], []}, fn
        {key, value}, {args, named} ->
          {args, Keyword.put(named, key, value)}

        arg, {args, named} ->
          {[arg | args], named}
      end)

    {Enum.reverse(args), named}
  end

  def compare_type(type_id, arg) do
    types = generated(Types).types()
    type = types[type_id]

    compare_type(arg, type, types)
  end

  def compare_type(arg, %{name: "anytype"}, _types) do
    %{match: true, anytype: arg}
  end

  def compare_type(arg, %{name: "std::anyenum"}, _types) do
    %{match: arg.__kind__ == :enum}
  end

  def compare_type(arg, %{kind: "scalar"} = type, _types) do
    arg = arg[:__casttype__] || arg

    match? =
      (arg.__kind__ == :scalar or arg.__kind__ == :enum) and
        (arg.__name__ == type.name or
           generated(CastMaps).implicitly_castable?(arg.__name__, type.name))

    %{match: match?}
  end

  def compare_type(arg, %{kind: "array"} = type, _types) do
    if arg.__kind__ == :array do
      compare_type(type.array_element_id, arg.__element__)
    else
      %{match: false}
    end
  end

  def compare_type(%{__kind__: kind}, %{kind: "object"}, _types) when kind != :object do
    %{match: false}
  end

  def compare_type(arg, %{kind: "object"} = type, types) do
    match? =
      Enum.reduce_while(type.pointers, true, fn pointer, match ->
        if arg.__pointers__[pointer.name] do
          arg_pointer = arg.__pointers__[pointer.name]
          pointer_target = types[pointer.target_id]

          if pointer_target.name != arg_pointer.target.().__name__ or
               pointer.real_cardinality != arg_pointer.cardinality do
            {:halt, false}
          else
            {:cont, match}
          end
        else
          {:cont, match}
        end
      end)

    %{match: match?}
  end

  def compare_type(arg, %{kind: "tuple"} = type, _types) do
    items =
      cond do
        arg.__kind__ == :tuple ->
          arg.__items__

        arg.__kind__ == :named_tuple ->
          arg.__shape__

        true ->
          nil
      end

    if not is_nil(items) do
      keys = Map.keys(items)

      if length(keys) == length(type.tuple_elements) do
        keys
        |> Enum.with_index()
        |> Enum.reduce_while(%{match: true}, fn {key, index}, match ->
          type_elem = Enum.at(type.tuple_elements, index)

          if key != type_elem[:name] do
            {:halt, %{match: false}}
          else
            compare_result = compare_type(type_elem.target_id, items[key])

            if not compare_result.match do
              {:halt, %{match: false}}
            else
              match =
                if anytype = compare_result.anytype do
                  Map.put(match, :anytype, anytype)
                else
                  match
                end

              {:cont, match}
            end
          end
        end)
      else
        %{match: false}
      end
    else
    end
  end

  def compare_type(_arg, _type, _types) do
    %{match: false}
  end
end
