defmodule(QB.EdgeDB.QB.Modules.Cal) do
  [
    (
      scalar_name = :local_time
      type_id = "00000000-0000-0000-0000-00000000010d"

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
      scalar_name = :local_datetime
      type_id = "00000000-0000-0000-0000-00000000010b"

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
      scalar_name = :local_date
      type_id = "00000000-0000-0000-0000-00000000010c"

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
      scalar_name = :relative_duration
      type_id = "00000000-0000-0000-0000-000000000111"

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
        execute_fn_name = :execute_date_get

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      nil,
      (
        execute_fn_name = :execute_to_local_time

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      nil,
      (
        execute_fn_name = :execute_to_local_datetime

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      nil,
      (
        execute_fn_name = :execute_to_local_date

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_to_relative_duration

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_time_get

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ]
  ]
end