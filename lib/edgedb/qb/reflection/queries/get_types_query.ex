defmodule EdgeDB.QB.Reflection.Queries.GetTypesQuery do
  alias EdgeDB.QB.Utils

  @number_type %{
    id: "00000000-0000-0000-0000-0000000001ff",
    name: "std::number",
    is_abstract: false,
    kind: :scalar,
    enum_values: nil,
    material_id: nil,
    bases: []
  }

  @types_mapping %{
    "00000000-0000-0000-0000-000000000103" => @number_type,
    "00000000-0000-0000-0000-000000000104" => @number_type,
    "00000000-0000-0000-0000-000000000105" => @number_type,
    "00000000-0000-0000-0000-000000000106" => @number_type,
    "00000000-0000-0000-0000-000000000107" => @number_type
  }

  @known_object_fields ~w(
    id
    name
    is_abstract
    kind
    enum_values
    material_id
    bases
    union_of
    intersection_of
    pointers
    real_cardinality
    target_id
    is_exclusive
    is_writable
    has_default
    backlinks
    stub
    backlink_stubs
    array_element_id
    tuple_elements
  )a

  @query """
  WITH
    MODULE schema,

    material_scalars := (
      SELECT ScalarType
      FILTER
        (.name LIKE 'std::%' OR .name LIKE 'cal::%')
        AND NOT .is_abstract
    )

  SELECT Type {
    id,
    name,
    is_abstract,

    kind := 'object' IF Type IS ObjectType ELSE
            'scalar' IF Type IS ScalarType ELSE
            'array' IF Type IS Array ELSE
            'tuple' IF Type IS Tuple ELSE
            'unknown',

    [IS ScalarType].enum_values,

    # for sequence (abstract type that has non-abstract ancestor)
    single material_id := (
      SELECT x := Type[IS ScalarType].ancestors
      FILTER x IN material_scalars
      LIMIT 1
    ).id,

    [IS InheritingObject].bases: {
      id
    } ORDER BY @index ASC,

    [IS ObjectType].union_of,
    [IS ObjectType].intersection_of,
    [IS ObjectType].pointers: {
      real_cardinality := ("One" IF .required ELSE "AtMostOne") IF <str>.cardinality = "One" ELSE ("AtLeastOne" IF .required ELSE "Many"),
      name,
      target_id := .target.id,
      kind := 'link' IF .__type__.name = 'schema::Link' ELSE 'property',
      is_exclusive := exists (select .constraints filter .name = 'std::exclusive'),
      is_writable := len(.computed_fields) = 0 AND .readonly = false,
      has_default := EXISTS .default or ("std::sequence" in .target[IS ScalarType].ancestors.name),
      [IS Link].pointers: {
        real_cardinality := ("One" IF .required ELSE "AtMostOne") IF <str>.cardinality = "One" ELSE ("AtLeastOne" IF .required ELSE "Many"),
        name := '@' ++ .name,
        target_id := .target.id,
        kind := 'link' IF .__type__.name = 'schema::Link' ELSE 'property',
        is_writable := len(.computed_fields) = 0 AND .readonly = false,
      } filter .name != '@source' and .name != '@target',
    } FILTER @is_owned,
    backlinks := (SELECT DETACHED Link FILTER .target = Type) {
      real_cardinality := "AtMostOne"
        IF
        EXISTS (select .constraints filter .name = 'std::exclusive')
        ELSE
        "Many",
      name := '<' ++ .name ++ '[is ' ++ std::assert_exists(
        .source.name if .source.name[:9] != 'default::' else .source.name[9:]
      ) ++ ']',
      stub := .name,
      target_id := .source.id,
      kind := 'link',
      is_exclusive := (EXISTS (select .constraints filter .name = 'std::exclusive')) AND <str>.cardinality = "One",
    },
    backlink_stubs := array_agg((
      WITH
        stubs := DISTINCT (SELECT DETACHED Link FILTER .target = Type).name,
        baseObjectId := (SELECT DETACHED ObjectType FILTER .name = 'std::BaseObject' LIMIT 1).id
      FOR stub in { stubs }
      UNION (
        SELECT {
          real_cardinality := "Many",
          name := '<' ++ stub,
          target_id := baseObjectId,
          kind := 'link',
          is_exclusive := false,
        }
      )
    )),
    array_element_id := [IS Array].element_type.id,

    tuple_elements := (SELECT [IS Tuple].element_types {
      target_id := .type.id,
      name
    } ORDER BY @index ASC),
  }
  ORDER BY .name;
  """

  def execute(pid) do
    types = EdgeDB.query!(pid, @query)

    types
    |> Utils.to_native(atoms: @known_object_fields)
    |> Enum.map(fn type ->
      map_type(type.kind, type)
    end)
    |> Enum.concat([@number_type])
    |> topo_sort()
  end

  defp map_type("scalar", type) do
    case @types_mapping[type.id] do
      nil ->
        type

      cast ->
        Map.put(type, :cast_only_type, cast.id)
    end
  end

  defp map_type(_other, type) do
    type
  end

  defp topo_sort(types) do
    graph =
      Enum.into(types, %{}, fn type ->
        {type.id, type}
      end)

    adj =
      Enum.reduce(types, %{}, fn
        %{type: kind}, acc when kind not in ~w(object scalar) ->
          acc

        type, acc ->
          Enum.reduce(type.bases, acc, fn %{id: base}, acc ->
            if not Map.has_key?(graph, base) do
              raise RuntimeError, "reference to an unknown object type: #{inspect(base)}"
            end

            Map.update(acc, type.id, MapSet.new(), fn set ->
              MapSet.put(set, base)
            end)
          end)
      end)

    {_visiting, _visited, sorted, _graph, _adj} =
      Enum.reduce(types, {MapSet.new(), MapSet.new(), %{}, graph, adj}, fn type, acc ->
        visit(type, acc)
      end)

    sorted
  end

  defp visit(type, {visiting, visited, sorted, graph, adj}) do
    if MapSet.member?(visiting, type.name) do
      [last] = Enum.slice(visiting, 1..2)
      raise RuntimeError, "dependency cycle between #{type.name} and #{last}"
    end

    if not MapSet.member?(visited, type.id) do
      visiting = MapSet.put(visiting, type.name)

      {visiting, visited, sorted, graph, adj} =
        case adj[type.id] do
          nil ->
            {visiting, visited, sorted, graph, adj}

          bases ->
            Enum.reduce(bases, {visiting, visited, sorted, graph, adj}, fn adj_id, acc ->
              visit(graph[adj_id], acc)
            end)
        end

      {MapSet.delete(visiting, type.name), MapSet.put(visited, type.id),
       Map.put(sorted, type.id, type), graph, adj}
    else
      {visiting, visited, sorted, graph, adj}
    end
  end
end
