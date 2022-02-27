defmodule(QB.EdgeDB.QB.CastMaps) do
  [
    (
      @implicit_cast_map %{"std::bigint" => ["std::decimal"]}
      [
        (
          def(get_shared_parent_scalar(%{__casttype__: a}, %{__casttype__: b})) do
            get_shared_parent_scalar(a, b)
          end

          def(get_shared_parent_scalar(%{__casttype__: a}, b)) do
            get_shared_parent_scalar(a, b)
          end

          def(get_shared_parent_scalar(a, %{__casttype__: b})) do
            get_shared_parent_scalar(a, b)
          end
        ),
        [
          def(
            get_shared_parent_scalar(
              %{__name__: "cal::local_time"} = _a,
              %{__name__: "cal::local_time"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "cal::local_datetime"} = _a,
              %{__name__: "cal::local_datetime"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "std::float32"} = _a,
              %{__name__: "std::float32"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(%{__name__: "std::json"} = _a, %{__name__: "std::json"} = b)
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "std::int16"} = _a,
              %{__name__: "std::int16"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "cal::local_date"} = _a,
              %{__name__: "cal::local_date"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(%{__name__: "std::uuid"} = _a, %{__name__: "std::uuid"} = b)
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "default::bag_seq"} = _a,
              %{__name__: "default::bag_seq"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "std::duration"} = _a,
              %{__name__: "std::duration"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "std::decimal"} = _a,
              %{__name__: "std::decimal"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(%{__name__: "std::bool"} = _a, %{__name__: "std::bool"} = b)
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "std::int32"} = _a,
              %{__name__: "std::int32"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "std::number"} = _a,
              %{__name__: "std::number"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "cfg::memory"} = _a,
              %{__name__: "cfg::memory"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(%{__name__: "std::str"} = _a, %{__name__: "std::str"} = b)
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "cal::relative_duration"} = _a,
              %{__name__: "cal::relative_duration"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "std::int64"} = _a,
              %{__name__: "std::int64"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "std::bigint"} = _a,
              %{__name__: "std::bigint"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "std::float64"} = _a,
              %{__name__: "std::float64"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "std::datetime"} = _a,
              %{__name__: "std::datetime"} = b
            )
          ) do
            b
          end,
          def(
            get_shared_parent_scalar(
              %{__name__: "std::bytes"} = _a,
              %{__name__: "std::bytes"} = b
            )
          ) do
            b
          end
        ],
        def(get_shared_parent_scalar(a, b)) do
          raise(
            RuntimeError,
            "types are not castable: #{inspect(a.__name__)}, #{inspect(b.__name__)}"
          )
        end
      ]

      def(implicitly_castable?(from, to)) do
        case(@implicit_cast_map[from]) do
          nil ->
            false

          casts ->
            to in casts
        end
      end

      [
        def(literal_to_type_set(%{__element__: _element} = type)) do
          type
        end,
        def(literal_to_type_set(type) when is_struct(type, Date)) do
          EdgeDB.QB.Syntax.Literal.get_type("00000000-0000-0000-0000-00000000010c").(type)
        end,
        def(literal_to_type_set(type) when is_struct(type, DateTime)) do
          EdgeDB.QB.Syntax.Literal.get_type("00000000-0000-0000-0000-00000000010a").(type)
        end,
        def(literal_to_type_set(type) when is_struct(type, Decimal)) do
          EdgeDB.QB.Syntax.Literal.get_type("00000000-0000-0000-0000-0000000001ff").(type)
        end,
        def(literal_to_type_set(type) when is_struct(type, EdgeDB.ConfigMemory)) do
          EdgeDB.QB.Syntax.Literal.get_type("00000000-0000-0000-0000-000000000130").(type)
        end,
        def(literal_to_type_set(type) when is_struct(type, EdgeDB.Duration)) do
          EdgeDB.QB.Syntax.Literal.get_type("00000000-0000-0000-0000-00000000010e").(type)
        end,
        def(literal_to_type_set(type) when is_struct(type, EdgeDB.RelativeDuration)) do
          EdgeDB.QB.Syntax.Literal.get_type("00000000-0000-0000-0000-000000000111").(type)
        end,
        def(literal_to_type_set(type) when is_struct(type, NaiveDateTime)) do
          EdgeDB.QB.Syntax.Literal.get_type("00000000-0000-0000-0000-00000000010b").(type)
        end,
        def(literal_to_type_set(type) when is_struct(type, Time)) do
          EdgeDB.QB.Syntax.Literal.get_type("00000000-0000-0000-0000-00000000010d").(type)
        end,
        def(literal_to_type_set(type) when is_binary(type)) do
          EdgeDB.QB.Syntax.Literal.get_type("00000000-0000-0000-0000-000000000100").(type)
        end,
        def(literal_to_type_set(type) when is_bitstring(type)) do
          EdgeDB.QB.Syntax.Literal.get_type("00000000-0000-0000-0000-000000000102").(type)
        end,
        def(literal_to_type_set(type) when is_boolean(type)) do
          EdgeDB.QB.Syntax.Literal.get_type("00000000-0000-0000-0000-000000000109").(type)
        end,
        def(literal_to_type_set(type) when is_float(type)) do
          EdgeDB.QB.Syntax.Literal.get_type("00000000-0000-0000-0000-000000000107").(type)
        end,
        def(literal_to_type_set(type) when is_integer(type)) do
          EdgeDB.QB.Syntax.Literal.get_type("00000000-0000-0000-0000-000000000105").(type)
        end,
        def(literal_to_type_set(type)) do
          raise(RuntimeError, "cannot convert literal #{inspect(type)} into scalar type")
        end
      ]
    )
  ]
end