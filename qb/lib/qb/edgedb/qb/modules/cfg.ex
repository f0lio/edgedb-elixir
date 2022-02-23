defmodule(QB.EdgeDB.QB.Modules.Cfg) do
  [
    (
      scalar_name = :memory
      type_id = "00000000-0000-0000-0000-000000000130"

      (
        def(unquote(scalar_name)()) do
          EdgeDB.QB.Reflection.Hydrate.make_type(
            unquote(type_id),
            &EdgeDB.QB.Syntax.Literal.literal/2
          )
        end

        def(unquote(scalar_name)(value)) do
          EdgeDB.QB.Reflection.Hydrate.make_type(
            unquote(type_id),
            &EdgeDB.QB.Syntax.Literal.literal/2
          ).__executor__.(value)
        end
      )
    ),
    [
      nil,
      (
        execute_fn_name = :execute_get_config_json

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ]
  ]
end