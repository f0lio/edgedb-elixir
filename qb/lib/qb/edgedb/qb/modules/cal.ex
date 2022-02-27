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
    def(date_get(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("cal::date_get", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010c",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :date_get,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_local_time(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("cal::to_local_time", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              },
              %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010d",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010a",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010d",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010d",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_local_time,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_local_datetime(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("cal::to_local_datetime", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              },
              %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010b",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010a",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010b",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010b",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_local_datetime,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_local_date(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("cal::to_local_date", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              },
              %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010c",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010a",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010c",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010c",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_local_date,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_relative_duration(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("cal::to_relative_duration", args, [
          %{
            args: [],
            named_args: %{
              "days" => %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              "hours" => %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              "microseconds" => %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              "minutes" => %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              "months" => %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              "seconds" => %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              },
              "years" => %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            },
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000111",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_relative_duration,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(time_get(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("cal::time_get", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010d",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :time_get,
        __args__: args,
        __named_args__: named_args
      })
    end
  ]
end