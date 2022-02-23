defmodule EdgeDB.QB.Utils do
  def to_native(term, opts \\ [])

  def to_native(%EdgeDB.Set{} = set, opts) do
    Enum.map(set, fn item ->
      to_native(item, opts)
    end)
  end

  def to_native(%EdgeDB.Object{} = object, opts) do
    atoms = Keyword.get(opts, :atoms, [])

    object
    |> EdgeDB.Object.fields(implicit: true)
    |> Enum.into(%{}, fn field ->
      field =
        Enum.find(atoms, field, fn atom ->
          to_string(atom) == field
        end)

      {field, to_native(object[field], opts)}
    end)
  end

  def to_native(array, opts) when is_list(array) do
    Enum.map(array, fn item ->
      to_native(item, opts)
    end)
  end

  def to_native(term, _opts) do
    term
  end
end
