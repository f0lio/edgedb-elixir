defmodule EdgeDB.QB.Utils.Functions do
  def get_implicit_castable_root_types(casts) do
    casts.implicit_cast_map
    |> Enum.filter(fn {id, castable_to} ->
      castable_to == [] and length(casts.implicit_cast_from_map[id] || []) > 0
    end)
    |> Enum.map(fn {id, _castable_to} ->
      id
    end)
  end

  def get_types_specificity(types, casts) do
    type_specificities =
      types
      |> Enum.filter(fn {_id, type} ->
        (casts.implicit_cast_from_map[type.id] || []) == []
      end)
      |> Enum.map(fn {_id, type} ->
        type
      end)
      |> visit_types(types, casts)

    Enum.into(type_specificities, %{}, fn {type, spec} ->
      {type.id, spec}
    end)
  end

  def expand_funcop_anytype_overloads(overloads, types) do
    overloads
    |> Enum.with_index()
    |> Enum.map(fn {func_def, overload_index} ->
      Map.merge(func_def, %{
        overload_index: overload_index,
        params: group_params(func_def.params, types)
      })
    end)
    |> IO.inspect()
  end

  def sort_funcop_anytype_overloads(overloads, type_specificities) do
    Enum.sort(overloads, fn a, b ->
      sort_funcop_anytype_overloads(a, b, type_specificities, 0)
    end)
  end

  defp sort_funcop_anytype_overloads(a, b, type_specificities, i) do
    param_a = Enum.at(a.params, i)
    param_b = Enum.at(b.params, i)

    param_a =
      if param_a && param_a.kind == "NamedOnlyParam" do
        nil
      else
        param_a
      end

    param_b =
      if param_b && param_b.kind == "NamedOnlyParam" do
        nil
      else
        param_b
      end

    cond do
      is_nil(param_a) and is_nil(param_b) ->
        true

      is_nil(param_a) ->
        true

      is_nil(param_b) ->
        false

      true ->
        spec_a = type_specificities[param_a.type.id]
        spec_b = type_specificities[param_b.type.id]

        cond do
          spec_a == :infinity or spec_b == :infinity ->
            true

          spec_a != spec_b ->
            spec_a - spec_b <= 0

          true ->
            sort_funcop_anytype_overloads(a, b, type_specificities, i + 1)
        end
    end
  end

  defp visit_types(types_to_visit, types, casts) do
    visit_types(types_to_visit, %{}, types, casts, 0)
  end

  defp visit_types([], type_specificities, _types, _casts, _current_spec) do
    type_specificities
  end

  defp visit_types(types_to_visit, type_specificities, types, casts, current_spec) do
    {type_specificities, types_to_visit} =
      Enum.reduce(
        types_to_visit,
        {type_specificities, MapSet.new()},
        fn type, {type_specificities, next_types_to_visit} ->
          specificity =
            if type.name == "anytype" do
              :infinity
            else
              current_spec
            end

          type_specificities = Map.put(type_specificities, type, specificity)

          next_types_to_visit =
            Enum.reduce(
              casts.implicit_cast_map[type.id] || [],
              next_types_to_visit,
              fn castable_to, next_types_to_visit ->
                MapSet.put(next_types_to_visit, types[castable_to])
              end
            )

          {type_specificities, next_types_to_visit}
        end
      )

    types_to_visit
    |> MapSet.to_list()
    |> visit_types(type_specificities, types, casts, current_spec + 1)
  end

  defp group_params(params, types) do
    positional =
      params
      |> Enum.filter(fn param ->
        param.kind == "PositionalParam" or param.kind == "VariadicParam"
      end)
      |> Enum.map(fn param ->
        param_type = types[param.type.id]
        IO.inspect({param, param_type})

        param_type =
          if param.kind == "VariadicParam" do
            if param_type.kind != "array" do
              raise RuntimeError, "Variadic param not array type"
            end

            types[param_type.array_element_id]
          else
            param_type
          end

        Map.put(param, :type, param_type)
      end)

    named =
      params
      |> Enum.filter(fn param ->
        param.kind == "NamedOnlyParam"
      end)
      |> Enum.map(fn param ->
        Map.put(param, :type, types[param.type.id])
      end)

    %{
      positional: positional,
      named: named
    }
  end
end
