defmodule EdgeDB.QB.Reflection.Queries.GetCastsQuery do
  @query """
  WITH MODULE schema
  SELECT Cast {
      id,
      source := .from_type { id, name },
      target := .to_type { id, name },
      allow_assignment,
      allow_implicit,
  }
  FILTER .from_type IS ScalarType
  AND .to_type IS ScalarType
  """

  def execute(pid) do
    casts = EdgeDB.query!(pid, @query)

    casts_by_id = %{}
    types_by_id = %{}
    casts_map = %{}
    implicit_casts_map = %{}
    implicit_casts_from_map = %{}
    assignment_cast_map = %{}
    assignable_by_map = %{}
  end
end
