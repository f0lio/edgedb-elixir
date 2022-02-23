defmodule(QB.EdgeDB.QB.Modules.Default) do
  [
    (
      scalar_name = :"🚀🚀🚀"
      type_id = "c1532ff4-91d9-11ec-a73f-09eee86c5ef9"

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
    (
      scalar_name = :مرحبا
      type_id = "c151938f-91d9-11ec-a0b8-19a30ae39783"

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
    ),
    (
      scalar_name = :你好
      type_id = "c151834e-91d9-11ec-9ddd-3f4eba72c0ae"

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
        execute_fn_name = :"execute_💯"

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ]
  ]
end