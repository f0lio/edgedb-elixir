defmodule EdgeDB.QB.Reflection.Queries.GetOperatorsQuery do
  alias EdgeDB.QB.Utils
  alias EdgeDB.QB.Utils.Generation
  alias EdgeDB.QB.Reflection.Queries.GetFunctionsQuery

  @json_library Application.compile_env(:edgedb, :json, Jason)

  @known_fields ~w(
    id
    name
    annotations
    operator_kind
    return_type
    return_typemod
    params
    type
    kind
    typemod
  )a

  @query """
  WITH
    MODULE schema
  SELECT Operator {
    id,
    name,
    annotations: {
      name,
      @value
    } FILTER .name IN {'std::identifier', 'std::description'},
    operator_kind,
    return_type: {id, name},
    return_typemod,
    params: {
      name,
      type: {id, name},
      kind,
      typemod,
    } ORDER BY @index,
  } FILTER NOT .internal AND NOT .abstract
  """

  def execute(pid) do
    all_ops =
      pid
      |> EdgeDB.query!(@query)
      |> Utils.to_native(atoms: @known_fields)

    {ops, _seen_ops_def_hashes} =
      Enum.reduce(all_ops, {%{}, MapSet.new()}, fn op, {ops, seen_ops_def_hashes} ->
        identifier =
          Enum.find(op.annotations, fn annotation ->
            annotation.name == "std::identifier"
          end)["@value"]

        if identifier do
          {mod, _name} = Generation.split_name(op.name)
          name = "#{mod}::#{identifier}"

          op_def =
            Map.merge(op, %{
              name: name,
              kind: op.operator_kind,
              original_name: op.name,
              description:
                Enum.find(op.annotations, fn annotation ->
                  annotation.name == "std::description"
                end)["@value"],
              annotations: nil
            })

          op_def = GetFunctionsQuery.replace_number_types(op_def)
          hash = hash_op_def(op_def)

          if not MapSet.member?(seen_ops_def_hashes, hash) do
            ops =
              Map.update(ops, name, [op_def], fn op_defs ->
                op_defs ++ [op_def]
              end)

            seen_ops_def_hashes = MapSet.put(seen_ops_def_hashes, hash)
            {ops, seen_ops_def_hashes}
          else
            {ops, seen_ops_def_hashes}
          end
        else
          {ops, seen_ops_def_hashes}
        end
      end)

    ops
  end

  def hash_op_def(op_def) do
    @json_library.encode!(%{
      name: op_def.name,
      return_type: op_def.return_type.id,
      return_typemod: op_def.return_typemod,
      params:
        op_def.params
        |> Enum.map(fn param ->
          @json_library.encode!(%{
            kind: param.kind,
            type: param.type.id,
            typemod: param.typemod
          })
        end)
        |> Enum.sort(),
      operator_kind: op_def.operator_kind
    })
  end
end
