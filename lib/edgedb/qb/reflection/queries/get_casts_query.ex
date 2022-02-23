defmodule EdgeDB.QB.Reflection.Queries.GetCastsQuery do
  alias EdgeDB.QB.Reflection.Queries.GetTypesQuery
  alias EdgeDB.QB.Utils

  @types_mapping GetTypesQuery.types_mapping()

  @known_fields ~w(
    id
    name
    source
    target
    allow_assignment
    allow_implicit
  )a

  @query """
  WITH
    MODULE schema
  SELECT Cast {
      id,
      source := .from_type { id, name },
      target := .to_type { id, name },
      allow_assignment,
      allow_implicit,
  }
  FILTER .from_type IS ScalarType AND .to_type IS ScalarType
  """

  def execute(pid) do
    all_casts =
      pid
      |> EdgeDB.query!(@query)
      |> Utils.to_native(atoms: @known_fields)

    {
      types,
      types_by_id,
      casts_by_id,
      casts_by_source,
      implicit_casts_by_source,
      implicit_casts_by_target,
      assignment_casts_by_source,
      assignment_casts_by_target
    } =
      Enum.reduce(
        all_casts,
        {MapSet.new(), %{}, %{}, %{}, %{}, %{}, %{}, %{}},
        fn cast,
           {
             types,
             types_by_id,
             casts_by_id,
             casts_by_source,
             implicit_casts_by_source,
             implicit_casts_by_target,
             assignment_casts_by_source,
             assignment_casts_by_target
           } ->
          cast =
            if @types_mapping[cast.source.id] || @types_mapping[cast.target.id] do
              Map.merge(cast, %{allow_implicit: false, allow_assignment: false})
            else
              cast
            end

          types_by_id =
            Map.merge(types_by_id, %{cast.source.id => cast.source, cast.target.id => cast.target})

          types =
            types
            |> MapSet.put(cast.source.id)
            |> MapSet.put(cast.target.id)

          casts_by_id = Map.put(casts_by_id, cast.id, cast)

          casts_by_source =
            Map.update(casts_by_source, cast.source.id, [cast.target.id], fn casts ->
              casts ++ [cast.target.id]
            end)

          {assignment_casts_by_source, assignment_casts_by_target} =
            if cast.allow_assignment or cast.allow_implicit do
              assignment_casts_by_source =
                Map.update(assignment_casts_by_source, cast.source.id, [cast.target.id], fn casts ->
                  casts ++ [cast.target.id]
                end)

              assignment_casts_by_target =
                Map.update(assignment_casts_by_source, cast.target.id, [cast.source.id], fn casts ->
                  casts ++ [cast.source.id]
                end)

              {assignment_casts_by_source, assignment_casts_by_target}
            else
              {assignment_casts_by_source, assignment_casts_by_target}
            end

          {implicit_casts_by_source, implicit_casts_by_target} =
            if cast.allow_implicit do
              implicit_casts_by_source =
                Map.update(implicit_casts_by_source, cast.source.id, [cast.target.id], fn casts ->
                  casts ++ [cast.target.id]
                end)

              implicit_casts_by_target =
                Map.update(implicit_casts_by_target, cast.target.id, [cast.source.id], fn casts ->
                  casts ++ [cast.source.id]
                end)

              {implicit_casts_by_source, implicit_casts_by_target}
            else
              {implicit_casts_by_source, implicit_casts_by_target}
            end

          {
            types,
            types_by_id,
            casts_by_id,
            casts_by_source,
            implicit_casts_by_source,
            implicit_casts_by_target,
            assignment_casts_by_source,
            assignment_casts_by_target
          }
        end
      )

    {
      cast_map,
      implicit_cast_map,
      implicit_cast_from_map,
      assignment_cast_map,
      assignable_by_map
    } =
      Enum.reduce(
        types,
        {%{}, %{}, %{}, %{}, %{}},
        fn type,
           {
             cast_map,
             implicit_cast_map,
             implicit_cast_from_map,
             assignment_cast_map,
             assignable_by_map
           } ->
          cast_map = Map.put(cast_map, type, casts_by_source[type] || [])

          implicit_cast_map =
            Map.put(implicit_cast_map, type, reachable_from(type, implicit_casts_by_source))

          implicit_cast_from_map =
            Map.put(implicit_cast_from_map, type, reachable_from(type, implicit_casts_by_target))

          assignment_cast_map =
            Map.put(assignment_cast_map, type, reachable_from(type, assignment_casts_by_source))

          assignable_by_map =
            Map.put(assignable_by_map, type, reachable_from(type, assignment_casts_by_target))

          {
            cast_map,
            implicit_cast_map,
            implicit_cast_from_map,
            assignment_cast_map,
            assignable_by_map
          }
        end
      )

    %{
      casts_by_id: casts_by_id,
      types_by_id: types_by_id,
      cast_map: cast_map,
      implicit_cast_map: implicit_cast_map,
      implicit_cast_from_map: implicit_cast_from_map,
      assignment_cast_map: assignment_cast_map,
      assignable_by_map: assignable_by_map
    }
  end

  defp reachable_from(source, adj) do
    reachable_from(source, adj, MapSet.new())
  end

  defp reachable_from(source, adj, seen) do
    reachable = MapSet.new()

    if MapSet.member?(seen, source) do
      []
    else
      seen = MapSet.put(seen, source)
      casts = adj[source] || []

      casts
      |> Enum.reduce(reachable, fn cast, reachable ->
        reachable = MapSet.put(reachable, cast)

        cast
        |> reachable_from(adj, seen)
        |> Enum.into(reachable)
      end)
      |> Enum.into([])
    end
  end
end
