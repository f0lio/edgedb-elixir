defmodule EdgeDB.QB.Reflection.Hydrate do
  import EdgeDB.QB.Runtime

  alias EdgeDB.QB.Caches

  def make_type_from_name(type_name, literal_fn) do
    type_id =
      Enum.find(generated(Spec).values(), fn {_id, type} ->
        type.name == type_name
      end).id

    make_type(type_id, literal_fn, nil)
  end

  def make_type(_id, _literal_fn, _anytype) do
    # TODO
  end
end
