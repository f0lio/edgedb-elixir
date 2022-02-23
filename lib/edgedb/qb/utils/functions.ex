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
end
