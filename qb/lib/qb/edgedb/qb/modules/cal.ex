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
      [
        (
          @doc "Extract a specific element of input date by name."
          def(date_get(dt, el)) do
            execute_date_get([dt, el])
          end
        )
      ],
      defp(execute_date_get(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:date_get, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-00000000010c",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                },
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-0000000001ff",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "cal::date_get",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Create a `cal::local_time` value."
          def(to_local_time(s, fmt \\ :__edgedb_default__)) do
            execute_to_local_time([s, fmt])
          end
        )
      ],
      [
        (
          @doc "Create a `cal::local_time` value."
          def(to_local_time(dt, zone)) do
            execute_to_local_time([dt, zone])
          end
        )
      ],
      [
        (
          @doc "Create a `cal::local_time` value."
          def(to_local_time(hour, min, sec)) do
            execute_to_local_time([hour, min, sec])
          end
        )
      ],
      defp(execute_to_local_time(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_local_time, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                },
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: true,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-00000000010d",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "cal::to_local_time",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Create a `cal::local_datetime` value."
          def(to_local_datetime(s, fmt \\ :__edgedb_default__)) do
            execute_to_local_datetime([s, fmt])
          end
        )
      ],
      [
        (
          @doc "Create a `cal::local_datetime` value."
          def(to_local_datetime(dt, zone)) do
            execute_to_local_datetime([dt, zone])
          end
        )
      ],
      [
        (
          @doc "Create a `cal::local_datetime` value."
          def(to_local_datetime(year, month, day, hour, min, sec)) do
            execute_to_local_datetime([year, month, day, hour, min, sec])
          end
        )
      ],
      defp(execute_to_local_datetime(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_local_datetime, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                },
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: true,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-00000000010b",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "cal::to_local_datetime",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Create a `cal::local_date` value."
          def(to_local_date(s, fmt \\ :__edgedb_default__)) do
            execute_to_local_date([s, fmt])
          end
        )
      ],
      [
        (
          @doc "Create a `cal::local_date` value."
          def(to_local_date(dt, zone)) do
            execute_to_local_date([dt, zone])
          end
        )
      ],
      [
        (
          @doc "Create a `cal::local_date` value."
          def(to_local_date(year, month, day)) do
            execute_to_local_date([year, month, day])
          end
        )
      ],
      defp(execute_to_local_date(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_local_date, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                },
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: true,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-00000000010c",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "cal::to_local_date",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Create a `cal::relative_duration` value."
          def(to_relative_duration(edgedb_elixir_named_arguments \\ [])) do
            execute_to_relative_duration([[], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_to_relative_duration(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_relative_duration, positional, named, [
            %{
              args: [],
              named_args: %{
                "days" =>
                  {:%{}, [],
                   [
                     type_id: "00000000-0000-0000-0000-0000000001ff",
                     optional: true,
                     set_of_type: false,
                     variadic: false
                   ]},
                "hours" =>
                  {:%{}, [],
                   [
                     type_id: "00000000-0000-0000-0000-0000000001ff",
                     optional: true,
                     set_of_type: false,
                     variadic: false
                   ]},
                "microseconds" =>
                  {:%{}, [],
                   [
                     type_id: "00000000-0000-0000-0000-0000000001ff",
                     optional: true,
                     set_of_type: false,
                     variadic: false
                   ]},
                "minutes" =>
                  {:%{}, [],
                   [
                     type_id: "00000000-0000-0000-0000-0000000001ff",
                     optional: true,
                     set_of_type: false,
                     variadic: false
                   ]},
                "months" =>
                  {:%{}, [],
                   [
                     type_id: "00000000-0000-0000-0000-0000000001ff",
                     optional: true,
                     set_of_type: false,
                     variadic: false
                   ]},
                "seconds" =>
                  {:%{}, [],
                   [
                     type_id: "00000000-0000-0000-0000-0000000001ff",
                     optional: true,
                     set_of_type: false,
                     variadic: false
                   ]},
                "years" =>
                  {:%{}, [],
                   [
                     type_id: "00000000-0000-0000-0000-0000000001ff",
                     optional: true,
                     set_of_type: false,
                     variadic: false
                   ]}
              },
              return_type_id: "00000000-0000-0000-0000-000000000111",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "cal::to_relative_duration",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Extract a specific element of input time by name."
          def(time_get(dt, el)) do
            execute_time_get([dt, el])
          end
        )
      ],
      defp(execute_time_get(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:time_get, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-00000000010d",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                },
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-0000000001ff",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "cal::time_get",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ]
  ]
end