defmodule EdgeDB.QB.Syntax.Collections do
  import EdgeDB.QB.Runtime

  alias EdgeDB.QB.{
    Utils,
    Proxy
  }

  alias EdgeDB.QB.Syntax.Path

  @index_slice_regex ~r/^(-?\d+)(?:(:)(-?\d+)?)?|:(-?\d+)$/

  def maybe_to_tuple_path(%{__element__: %{__kind__: kind}} = expr)
      when kind != :tuple and kind != :named_tuple do
    expr
  end

  def maybe_to_tuple_path(expr) do
    Proxy.new!(expr, &tuple_handler/2)
  end

  def maybe_to_array_like_index(%{__element__: %{__kind__: kind, __name__: name}} = expr)
      when kind == :array or (kind == :scalar and (name == "std::str" or name == "std::bytes")) do
    expr = Proxy.new!(expr, &array_like_index_handler/2)

    expr
    |> Map.put(:index, array_like_index_fn())
    |> Map.put(:slice, array_like_slice_fn())
  end

  def maybe_to_array_like_index(expr) do
    expr
  end

  defp array_like_index_fn do
    fn expr, index ->
      index_type_set = generated(CastMapping).literal_to_type_set(index)

      element =
        if expr.__element__.__kind__ == :array do
          expr.__element__.__element__
        else
          expr.__element__
        end

      Path.to_expression(%{
        __kind__: :operator,
        __element__: element,
        __cardinality__:
          Utils.Cardinality.multiply_cardinalities(
            expr.__cardinality__,
            index_type_set.____cardinality__
          ),
        __name__: "[]",
        __opkind__: :infix,
        __args__: [expr, index_type_set]
      })
    end
  end

  defp array_like_slice_fn do
    fn expr, start_idx, end_idx ->
      start_type_set = start_idx && generated(CastMapping).literal_to_type_set(start_idx)
      end_type_set = start_idx && generated(CastMapping).literal_to_type_set(end_idx)

      cardinality1 =
        if start_type_set do
          start_type_set.__cardinality__
        else
          :one
        end

      cardinality2 =
        if end_type_set do
          end_type_set.__cardinality__
        else
          :one
        end

      Path.to_expression(%{
        __kind__: :operator,
        __element__: expr.__element__,
        __cardinality__:
          expr.__cardinality__
          |> Utils.Cardinality.multiply_cardinalities(cardinality1)
          |> Utils.Cardinality.multiply_cardinalities(cardinality2),
        __name__: "[]",
        __opkind__: :infix,
        __args__: [expr, [start_type_set, end_type_set]]
      })
    end
  end

  defp tuple_path(parent, item_type, index) do
    Path.to_expression(%{
      __kind__: :tuple_path,
      __element__: item_type,
      __cardinality__: parent.__cardinality__,
      __parent__: parent,
      __index__: index
    })
  end

  defp tuple_handler(proxy, field) do
    target = Proxy.destruct!(proxy)
    type = target.__element__

    items =
      case type.__kind__ do
        :tuple ->
          type.__items__

        :named_tuple ->
          type.__shape__

        _other ->
          nil
      end

    case Access.fetch(items, field) do
      {:ok, value} ->
        {:ok, tuple_path(proxy, value, field)}

      :error ->
        Access.fetch(target, field)
    end
  end

  defp array_like_index_handler(proxy, field) do
    target = Proxy.destruct!(proxy)

    with true <- is_binary(field),
         [match] <- Regex.scan(@index_slice_regex, field) do
      start_idx = Enum.at(match, 1)
      end_idx = Enum.at(match, 3) || Enum.at(match, 4)
      index? = start_idx && !Enum.at(match, 2)

      kind =
        if target.__element__.__kind__ == :array and index? do
          target.__element__.__element__
        else
          target.__element__
        end

      extra_args =
        if index? do
          {start_idx, ""} = Integer.parse(start_idx)
          generated(CastMapping).literal_to_type_set(start_idx)
        else
          start_idx =
            case Integer.parse(start_idx) do
              {start_idx, ""} ->
                generated(CastMapping).literal_to_type_set(start_idx)

              :error ->
                nil
            end

          end_idx =
            case Integer.parse(end_idx) do
              {end_idx, ""} ->
                generated(CastMapping).literal_to_type_set(end_idx)

              :error ->
                nil
            end

          [start_idx, end_idx]
        end

      {:ok,
       Path.to_expression(%{
         __kind__: :operator,
         __element__: kind,
         __cardinality__: target.__cardinality__,
         __name__: "[]",
         __opkind__: :infix,
         __args__: [
           proxy,
           extra_args
         ]
       })}
    else
      _other ->
        Access.fetch(target, field)
    end
  end
end
