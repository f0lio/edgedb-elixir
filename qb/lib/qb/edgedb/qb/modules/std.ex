defmodule(QB.EdgeDB.QB.Modules.Std) do
  [
    (
      scalar_name = :anyint
      type_id = "66364d12-8a10-11ec-b0bd-dba594fec9b3"

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
      scalar_name = :anyfloat
      type_id = "6638bd21-8a10-11ec-92fa-a1f2c208052b"

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
      scalar_name = :sequence
      type_id = "663c804e-8a10-11ec-a3c5-438941da3b32"

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
      scalar_name = :float32
      type_id = "00000000-0000-0000-0000-000000000106"

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
      scalar_name = :json
      type_id = "00000000-0000-0000-0000-00000000010f"

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
      scalar_name = :anyscalar
      type_id = "6630e5b7-8a10-11ec-856b-650e11726a69"

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
      scalar_name = :int16
      type_id = "00000000-0000-0000-0000-000000000103"

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
      scalar_name = :anyreal
      type_id = "6635a1ee-8a10-11ec-8b19-afdb38091631"

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
      scalar_name = :uuid
      type_id = "00000000-0000-0000-0000-000000000100"

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
      scalar_name = :duration
      type_id = "00000000-0000-0000-0000-00000000010e"

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
      scalar_name = :decimal
      type_id = "00000000-0000-0000-0000-000000000108"

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
      scalar_name = :bool
      type_id = "00000000-0000-0000-0000-000000000109"

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
      scalar_name = :int32
      type_id = "00000000-0000-0000-0000-000000000104"

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
      scalar_name = :number
      type_id = "00000000-0000-0000-0000-0000000001ff"

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
      scalar_name = :str
      type_id = "00000000-0000-0000-0000-000000000101"

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
      scalar_name = :int64
      type_id = "00000000-0000-0000-0000-000000000105"

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
      scalar_name = :bigint
      type_id = "00000000-0000-0000-0000-000000000110"

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
      scalar_name = :float64
      type_id = "00000000-0000-0000-0000-000000000107"

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
      scalar_name = :datetime
      type_id = "00000000-0000-0000-0000-00000000010a"

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
      scalar_name = :anynumeric
      type_id = "663a95c4-8a10-11ec-b0ee-4f15729863f1"

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
      scalar_name = :bytes
      type_id = "00000000-0000-0000-0000-000000000102"

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
        execute_fn_name = :execute_str_lpad

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_str_pad_end

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      (
        execute_fn_name = :execute_to_str

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_assert_single

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_count

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_all

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_enumerate

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_re_replace

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_sequence_next

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_to_float32

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      (
        execute_fn_name = :execute_min

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_str_trim_end

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_str_title

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_bytes_get_bit

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      nil,
      (
        execute_fn_name = :execute_len

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_str_rtrim

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_array_agg

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_json_array_unpack

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      nil,
      (
        execute_fn_name = :execute_find

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_re_test

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_str_upper

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_str_repeat

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_datetime_of_statement

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_random

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      nil,
      nil,
      nil,
      (
        execute_fn_name = :execute_to_datetime

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_re_match

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_assert_distinct

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_to_int64

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_re_match_all

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      nil,
      (
        execute_fn_name = :execute_sum

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      (
        execute_fn_name = :execute_sequence_reset

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_to_bigint

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_str_pad_start

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_datetime_current

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_json_typeof

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_array_join

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_str_rpad

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      nil,
      nil,
      (
        execute_fn_name = :execute_round

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_to_int16

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      (
        execute_fn_name = :execute_max

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_json_get

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_to_float64

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_datetime_of_transaction

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_to_int32

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_to_json

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_to_duration

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_to_decimal

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_str_trim_start

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_str_lower

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_duration_truncate

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_str_ltrim

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_uuid_generate_v1mc

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_any

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      (
        execute_fn_name = :execute_datetime_get

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      nil,
      nil,
      (
        execute_fn_name = :execute_contains

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_json_object_unpack

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_array_unpack

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_assert_exists

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_array_get

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_str_split

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_str_trim

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_datetime_truncate

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ],
    [
      nil,
      (
        execute_fn_name = :execute_duration_to_seconds

        defp(unquote(execute_fn_name)(args)) do
        end
      )
    ]
  ]
end