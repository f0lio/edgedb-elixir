defmodule EdgeDB.QB.Reflection.Queries.GetScalarsQuery do
  alias EdgeDB.QB.Utils

  @known_fields ~w(
    id
    name
    is_abstract
    bases
    ancestors
    children
    descendants
  )a

  @query """
  WITH MODULE schema
  SELECT InheritingObject {
    id,
    name,
    is_abstract,
    bases: { id, name },
    ancestors: { id, name },
    children := .<bases[IS Type] { id, name },
    descendants := .<ancestors[IS Type] { id, name }
  }
  FILTER
    InheritingObject IS ScalarType OR
    InheritingObject IS ObjectType;
  """

  def execute(pid) do
    scalar_array =
      pid
      |> EdgeDB.query!(@query)
      |> Utils.to_native(atoms: @known_fields)

    Enum.into(scalar_array, %{}, fn type ->
      {type.id, type}
    end)
  end
end
