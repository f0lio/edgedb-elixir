defmodule(QB.EdgeDB.QB.Modules.Default) do
  [
    (
      scalar_name = :bag_seq
      type_id = "c14a20a8-91d9-11ec-a941-cf56040cd56e"

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
    )
  ]
end