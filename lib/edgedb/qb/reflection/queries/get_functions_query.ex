defmodule EdgeDB.QB.Reflection.Queries.GetFunctionsQuery do
  alias EdgeDB.QB.Reflection.Queries.GetTypesQuery
  alias EdgeDB.QB.Utils

  @json_library Application.compile_env(:edgedb, :json, Jason)

  @types_mapping GetTypesQuery.types_mapping()

  @known_fields ~w(
    id
    name
    annotations
    return_type
    return_typemod
    params
    type
    kind
    typemod
    has_default
    preserves_optionality
  )a

  @query """
  WITH
    MODULE schema
  SELECT Function {
    id,
    name,
    annotations: {
      name,
      @value
    } filter .name = 'std::description',
    return_type: {id, name},
    return_typemod,
    params: {
      name,
      type: {id, name},
      kind,
      typemod,
      has_default := exists .default,
    } ORDER BY @index,
    preserves_optionality,
  } FILTER .internal = false
  """

  def execute(pid) do
    all_funs =
      pid
      |> EdgeDB.query!(@query)
      |> Utils.to_native(atoms: @known_fields)

    {funcs, _seen_func_def_hashes} =
      Enum.reduce(all_funs, {%{}, MapSet.new()}, fn %{name: name} = func,
                                                    {funcs, seen_func_def_hashses} ->
        func_def = Map.merge(func, %{description: Enum.at(func.annotations, 0)["@value"]})

        func_def = replace_number_types(func_def)

        hash = hash_func_def(func_def)

        if not MapSet.member?(seen_func_def_hashses, hash) do
          funcs =
            Map.update(funcs, name, [func_def], fn func_defs ->
              func_defs ++ [func_def]
            end)

          seen_func_def_hashses = MapSet.put(seen_func_def_hashses, hash)
          {funcs, seen_func_def_hashses}
        else
          {funcs, seen_func_def_hashses}
        end
      end)

    funcs
  end

  def replace_number_types(func_def) do
    func_def =
      if type = @types_mapping[func_def.return_type.id] do
        Map.put(func_def, :return_type, %{id: type.id, name: type.name})
      else
        func_def
      end

    params =
      Enum.map(func_def.params, fn param ->
        if type = @types_mapping[param.type.id] do
          Map.put(param, :type, %{id: type.id, name: type.name})
        else
          param
        end
      end)

    Map.put(func_def, :params, params)
  end

  defp hash_func_def(func_def) do
    @json_library.encode!(%{
      name: func_def.name,
      return_type: func_def.return_type.id,
      return_typemod: func_def.return_typemod,
      params:
        func_def.params
        |> Enum.map(fn param ->
          @json_library.encode!(%{
            kind: param.kind,
            type: param.type.id,
            typemod: param.typemod,
            has_default: param.has_default || false
          })
        end)
        |> Enum.sort()
    })
  end
end
