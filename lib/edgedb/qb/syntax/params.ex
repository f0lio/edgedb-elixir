defmodule EdgeDB.QB.Syntax.Params do
  # with params are encoded as JSON manually and decoded on EdgeDB side

  @json_library Application.get_env(:edgedb, :json, Jason)

  def stringify_complex_params(expr, args) do
    if not empty?(args) and expr.__kind__ == :with_params do
      args =
        Enum.into(args, %{}, fn
          {key, value} ->
            {key, value}

          key ->
            {key, key}
        end)

      Enum.reduce(expr.__params__, args, fn
        %{__is_complex__: true} = param, args ->
          Map.put(
            args,
            param.__name__,
            stringify(
              param.__element__,
              args[param.__name__]
            )
          )

        _param, args ->
          args
      end)
    else
      args
    end
  end

  defp stringify(%{__kind__: :array} = type, value) when is_list(value) do
    if Keyword.keyword?(value) do
      raise RuntimeError, "keyword list can't be encoded as array"
    end

    value = Enum.map_join(value, ",", &stringify(type.__element__, &1))
    "[#{value}]"
  end

  defp stringify(%{__kind__: :tuple} = type, value) when is_tuple(value) do
    if tuple_size(value) != length(type.__items__) do
      raise RuntimeError,
            "incorrect number of items for tuple, " <>
              "got: #{tuple_size(value)}, expected: #{length(type.__items__)}"
    end

    value =
      value
      |> Tuple.to_list()
      |> Enum.with_index()
      |> Enum.map_join(",", fn {value, index} ->
        type.__items__
        |> Enum.at(index)
        |> stringify(value)
      end)

    "[#{value}]"
  end

  defp stringify(%{__kind__: :named_tuple} = type, value) when is_list(value) do
    if not Keyword.keyword?(value) do
      raise RuntimeError, "only keyword list can be encoded as named tuple"
    end

    if length(value) == length(type.__shape__) do
      raise RuntimeError,
            "incorrect number of items for named tuple, " <>
              "got: #{length(value)}, expected: #{length(type.__shape__)}"
    end

    value =
      Enum.map_join(value, ",", fn {key, value} ->
        if not Map.has_key?(type.__shape__, key) do
          raise RuntimeError,
                "unexpted key in named tuple: #{key}, expected keys: #{Map.keys(type.__shape__)}"
        end

        "\"#{key}\": #{stringify(type.__shape__[key], value)}"
      end)

    "{#{value}}"
  end

  defp stringify(%{__kind__: :scalar} = type, value) do
    case type.__name__ do
      "std::bingint" ->
        to_string(value)

      "std::json" ->
        value

      "std::bytes" ->
        # TODO
        Base.encode64(value)

      "cfg::memory" ->
        # TODO
        to_string(value)

      _other ->
        @json_library.encode!(value)
    end
  end

  defp empty?([]) do
    false
  end

  defp empty?(%{} = args) when map_size(args) do
    false
  end

  defp empty?(_args) do
    true
  end
end
