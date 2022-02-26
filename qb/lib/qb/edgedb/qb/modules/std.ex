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
      [
        (
          @doc "Return the input string left-padded to the length *n*."
          def(str_lpad(s, n, fill \\ :__edgedb_default__)) do
            execute_str_lpad([s, n, fill])
          end
        )
      ],
      defp(execute_str_lpad(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_lpad, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                },
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
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
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_lpad",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the input string padded at the end to the length *n*."
          def(str_pad_end(s, n, fill \\ :__edgedb_default__)) do
            execute_str_pad_end([s, n, fill])
          end
        )
      ],
      defp(execute_str_pad_end(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_pad_end, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                },
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
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
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_pad_end",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return string representation of the input value."
          def(to_str(dt, fmt \\ :__edgedb_default__)) do
            execute_to_str([dt, fmt])
          end
        )
      ],
      defp(execute_to_str(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_str, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-00000000010a",
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
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::to_str",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Check that the input set contains at most one element, raise\n         CardinalityViolationError otherwise."
          def(assert_single(input)) do
            execute_assert_single([input])
          end
        )
      ],
      defp(execute_assert_single(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:assert_single, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000001",
                  optional: false,
                  set_of_type: true,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000001",
              return_typemod: "OptionalType",
              preserves_optionality: true
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::assert_single",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the number of elements in a set."
          def(count(s)) do
            execute_count([s])
          end
        )
      ],
      defp(execute_count(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:count, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000001",
                  optional: false,
                  set_of_type: true,
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
          __name__: "std::count",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Generalized boolean `AND` applied to the set of *values*."
          def(all(vals)) do
            execute_all([vals])
          end
        )
      ],
      defp(execute_all(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:all, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000109",
                  optional: false,
                  set_of_type: true,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000109",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::all",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return a set of tuples of the form `(index, element)`."
          def(enumerate(vals)) do
            execute_enumerate([vals])
          end
        )
      ],
      defp(execute_enumerate(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:enumerate, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000001",
                  optional: false,
                  set_of_type: true,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "9c27acd9-0932-6050-c7b0-c7410e2e0a85",
              return_typemod: "SetOfType",
              preserves_optionality: true
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::enumerate",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Replace matching substrings in a given string."
          def(re_replace(pattern, sub, str, edgedb_elixir_named_arguments \\ [])) do
            execute_re_replace([[str, sub, pattern], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_re_replace(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:re_replace, positional, named, [
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
              named_args: %{
                "flags" =>
                  {:%{}, [],
                   [
                     type_id: "00000000-0000-0000-0000-000000000101",
                     optional: true,
                     set_of_type: false,
                     variadic: false
                   ]}
              },
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::re_replace",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc ""
          def(sequence_next(seq)) do
            execute_sequence_next([seq])
          end
        )
      ],
      defp(execute_sequence_next(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:sequence_next, positional, named, [
            %{
              args: [
                %{
                  type_id: "6f1f91f9-8a10-11ec-8c7d-619274614b24",
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
          __name__: "std::sequence_next",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Create a `float32` value."
          def(to_float32(s, fmt \\ :__edgedb_default__)) do
            execute_to_float32([s, fmt])
          end
        )
      ],
      defp(execute_to_float32(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_float32, positional, named, [
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
              return_type_id: "00000000-0000-0000-0000-0000000001ff",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::to_float32",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the smallest value of the input set."
          def(min(vals)) do
            execute_min([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(min(vals)) do
            execute_min([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(min(vals)) do
            execute_min([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(min(vals)) do
            execute_min([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(min(vals)) do
            execute_min([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(min(vals)) do
            execute_min([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(min(vals)) do
            execute_min([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(min(vals)) do
            execute_min([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(min(vals)) do
            execute_min([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(min(vals)) do
            execute_min([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(min(vals)) do
            execute_min([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(min(vals)) do
            execute_min([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(min(vals)) do
            execute_min([vals])
          end
        )
      ],
      defp(execute_min(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:min, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000001",
                  optional: false,
                  set_of_type: true,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000001",
              return_typemod: "OptionalType",
              preserves_optionality: true
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::min",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the input string with all *trim* characters removed from its end."
          def(str_trim_end(s, tr \\ :__edgedb_default__)) do
            execute_str_trim_end([s, tr])
          end
        )
      ],
      defp(execute_str_trim_end(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_trim_end, positional, named, [
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
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_trim_end",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return a titlecase copy of the input *string*."
          def(str_title(s)) do
            execute_str_title([s])
          end
        )
      ],
      defp(execute_str_title(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_title, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_title",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Get the *nth* bit of the *bytes* value."
          def(bytes_get_bit(bytes, num)) do
            execute_bytes_get_bit([bytes, num])
          end
        )
      ],
      defp(execute_bytes_get_bit(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:bytes_get_bit, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000102",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                },
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
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
          __name__: "std::bytes_get_bit",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "A polymorphic function to calculate a \"length\" of its first argument."
          def(len(str)) do
            execute_len([str])
          end
        )
      ],
      [
        (
          @doc "A polymorphic function to calculate a \"length\" of its first argument."
          def(len(bytes)) do
            execute_len([bytes])
          end
        )
      ],
      [
        (
          @doc "A polymorphic function to calculate a \"length\" of its first argument."
          def(len(array)) do
            execute_len([array])
          end
        )
      ],
      defp(execute_len(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:len, positional, named, [
            %{
              args: [
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
          __name__: "std::len",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the input string with all rightmost *trim* characters removed."
          def(str_rtrim(s, tr \\ :__edgedb_default__)) do
            execute_str_rtrim([s, tr])
          end
        )
      ],
      defp(execute_str_rtrim(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_rtrim, positional, named, [
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
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_rtrim",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the array made from all of the input set elements."
          def(array_agg(s)) do
            execute_array_agg([s])
          end
        )
      ],
      defp(execute_array_agg(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:array_agg, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000001",
                  optional: false,
                  set_of_type: true,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "5d31584b-3a5f-533d-3d64-fab0fdab61b3",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::array_agg",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return elements of JSON array as a set of `json`."
          def(json_array_unpack(array)) do
            execute_json_array_unpack([array])
          end
        )
      ],
      defp(execute_json_array_unpack(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:json_array_unpack, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-00000000010f",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-00000000010f",
              return_typemod: "SetOfType",
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::json_array_unpack",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "A polymorphic function to find index of an element in a sequence."
          def(find(haystack, needle)) do
            execute_find([haystack, needle])
          end
        )
      ],
      [
        (
          @doc "A polymorphic function to find index of an element in a sequence."
          def(find(haystack, needle)) do
            execute_find([haystack, needle])
          end
        )
      ],
      [
        (
          @doc "A polymorphic function to find index of an element in a sequence."
          def(find(haystack, needle, from_pos \\ :__edgedb_default__)) do
            execute_find([haystack, needle, from_pos])
          end
        )
      ],
      defp(execute_find(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:find, positional, named, [
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
          __name__: "std::find",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Test if a regular expression has a match in a string."
          def(re_test(pattern, str)) do
            execute_re_test([pattern, str])
          end
        )
      ],
      defp(execute_re_test(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:re_test, positional, named, [
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
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000109",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::re_test",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return an uppercase copy of the input *string*."
          def(str_upper(s)) do
            execute_str_upper([s])
          end
        )
      ],
      defp(execute_str_upper(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_upper, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_upper",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Repeat the input *string* *n* times."
          def(str_repeat(s, n)) do
            execute_str_repeat([s, n])
          end
        )
      ],
      defp(execute_str_repeat(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_repeat, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                },
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_repeat",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the date and time of the start of the current statement."
          def(datetime_of_statement(edgedb_elixir_named_arguments \\ [])) do
            execute_datetime_of_statement([[], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_datetime_of_statement(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:datetime_of_statement, positional, named, [
            %{
              args: [],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-00000000010a",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::datetime_of_statement",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return a pseudo-random number in the range `0.0 <= x < 1.0`"
          def(random(edgedb_elixir_named_arguments \\ [])) do
            execute_random([[], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_random(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:random, positional, named, [
            %{
              args: [],
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
          __name__: "std::random",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Create a `datetime` value."
          def(to_datetime(epochseconds)) do
            execute_to_datetime([epochseconds])
          end
        )
      ],
      [
        (
          @doc "Create a `datetime` value."
          def(to_datetime(s, fmt \\ :__edgedb_default__)) do
            execute_to_datetime([s, fmt])
          end
        )
      ],
      [
        (
          @doc "Create a `datetime` value."
          def(to_datetime(local, zone)) do
            execute_to_datetime([local, zone])
          end
        )
      ],
      [
        (
          @doc "Create a `datetime` value."
          def(to_datetime(year, month, day, hour, min, sec, timezone)) do
            execute_to_datetime([year, month, day, hour, min, sec, timezone])
          end
        )
      ],
      [
        (
          @doc "Create a `datetime` value."
          def(to_datetime(epochseconds)) do
            execute_to_datetime([epochseconds])
          end
        )
      ],
      defp(execute_to_datetime(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_datetime, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-00000000010a",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::to_datetime",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Find the first regular expression match in a string."
          def(re_match(pattern, str)) do
            execute_re_match([pattern, str])
          end
        )
      ],
      defp(execute_re_match(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:re_match, positional, named, [
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
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "05f91774-15ea-9001-038e-092c1cad80af",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::re_match",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Check that the input set is a proper set, i.e. all elements\n         are unique"
          def(assert_distinct(input)) do
            execute_assert_distinct([input])
          end
        )
      ],
      defp(execute_assert_distinct(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:assert_distinct, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000001",
                  optional: false,
                  set_of_type: true,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000001",
              return_typemod: "SetOfType",
              preserves_optionality: true
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::assert_distinct",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Create a `int64` value."
          def(to_int64(s, fmt \\ :__edgedb_default__)) do
            execute_to_int64([s, fmt])
          end
        )
      ],
      defp(execute_to_int64(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_int64, positional, named, [
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
              return_type_id: "00000000-0000-0000-0000-0000000001ff",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::to_int64",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Find all regular expression matches in a string."
          def(re_match_all(pattern, str)) do
            execute_re_match_all([pattern, str])
          end
        )
      ],
      defp(execute_re_match_all(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:re_match_all, positional, named, [
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
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "05f91774-15ea-9001-038e-092c1cad80af",
              return_typemod: "SetOfType",
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::re_match_all",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the sum of the set of numbers."
          def(sum(s)) do
            execute_sum([s])
          end
        )
      ],
      [
        (
          @doc "Return the sum of the set of numbers."
          def(sum(s)) do
            execute_sum([s])
          end
        )
      ],
      [
        (
          @doc "Return the sum of the set of numbers."
          def(sum(s)) do
            execute_sum([s])
          end
        )
      ],
      defp(execute_sum(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:sum, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000110",
                  optional: false,
                  set_of_type: true,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000110",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::sum",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc ""
          def(sequence_reset(seq)) do
            execute_sequence_reset([seq])
          end
        )
      ],
      [
        (
          @doc ""
          def(sequence_reset(seq, value)) do
            execute_sequence_reset([seq, value])
          end
        )
      ],
      defp(execute_sequence_reset(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:sequence_reset, positional, named, [
            %{
              args: [
                %{
                  type_id: "6f1f91f9-8a10-11ec-8c7d-619274614b24",
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
          __name__: "std::sequence_reset",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Create a `bigint` value."
          def(to_bigint(s, fmt \\ :__edgedb_default__)) do
            execute_to_bigint([s, fmt])
          end
        )
      ],
      defp(execute_to_bigint(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_bigint, positional, named, [
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
              return_type_id: "00000000-0000-0000-0000-000000000110",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::to_bigint",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the input string padded at the start to the length *n*."
          def(str_pad_start(s, n, fill \\ :__edgedb_default__)) do
            execute_str_pad_start([s, n, fill])
          end
        )
      ],
      defp(execute_str_pad_start(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_pad_start, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                },
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
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
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_pad_start",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the current server date and time."
          def(datetime_current(edgedb_elixir_named_arguments \\ [])) do
            execute_datetime_current([[], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_datetime_current(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:datetime_current, positional, named, [
            %{
              args: [],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-00000000010a",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::datetime_current",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the type of the outermost JSON value as a string."
          def(json_typeof(json)) do
            execute_json_typeof([json])
          end
        )
      ],
      defp(execute_json_typeof(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:json_typeof, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-00000000010f",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::json_typeof",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Render an array to a string."
          def(array_join(array, delimiter)) do
            execute_array_join([array, delimiter])
          end
        )
      ],
      defp(execute_array_join(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:array_join, positional, named, [
            %{
              args: [
                %{
                  type_id: "05f91774-15ea-9001-038e-092c1cad80af",
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
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::array_join",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the input string right-padded to the length *n*."
          def(str_rpad(s, n, fill \\ :__edgedb_default__)) do
            execute_str_rpad([s, n, fill])
          end
        )
      ],
      defp(execute_str_rpad(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_rpad, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                },
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
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
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_rpad",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Round to the nearest value."
          def(round(val)) do
            execute_round([val])
          end
        )
      ],
      [
        (
          @doc "Round to the nearest value."
          def(round(val)) do
            execute_round([val])
          end
        )
      ],
      [
        (
          @doc "Round to the nearest value."
          def(round(val)) do
            execute_round([val])
          end
        )
      ],
      [
        (
          @doc "Round to the nearest value."
          def(round(val, d)) do
            execute_round([val, d])
          end
        )
      ],
      defp(execute_round(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:round, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
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
          __name__: "std::round",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Create a `int16` value."
          def(to_int16(s, fmt \\ :__edgedb_default__)) do
            execute_to_int16([s, fmt])
          end
        )
      ],
      defp(execute_to_int16(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_int16, positional, named, [
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
              return_type_id: "00000000-0000-0000-0000-0000000001ff",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::to_int16",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the greatest value of the input set."
          def(max(vals)) do
            execute_max([vals])
          end
        )
      ],
      [
        (
          @doc "Return the greatest value of the input set."
          def(max(vals)) do
            execute_max([vals])
          end
        )
      ],
      [
        (
          @doc "Return the greatest value of the input set."
          def(max(vals)) do
            execute_max([vals])
          end
        )
      ],
      [
        (
          @doc "Return the greatest value of the input set."
          def(max(vals)) do
            execute_max([vals])
          end
        )
      ],
      [
        (
          @doc "Return the greatest value of the input set."
          def(max(vals)) do
            execute_max([vals])
          end
        )
      ],
      [
        (
          @doc "Return the greatest value of the input set."
          def(max(vals)) do
            execute_max([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(max(vals)) do
            execute_max([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(max(vals)) do
            execute_max([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(max(vals)) do
            execute_max([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(max(vals)) do
            execute_max([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(max(vals)) do
            execute_max([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(max(vals)) do
            execute_max([vals])
          end
        )
      ],
      [
        (
          @doc "Return the smallest value of the input set."
          def(max(vals)) do
            execute_max([vals])
          end
        )
      ],
      defp(execute_max(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:max, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000001",
                  optional: false,
                  set_of_type: true,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000001",
              return_typemod: "OptionalType",
              preserves_optionality: true
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::max",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the JSON value at the end of the specified path or an empty set."
          def(json_get(json, path, edgedb_elixir_named_arguments \\ [])) do
            execute_json_get([[path, json], edgedb_elixir_named_arguments])
          end
        ),
        (
          @doc "Return the JSON value at the end of the specified path or an empty set."
          def(json_get(json, path)) do
            execute_json_get([json, path])
          end
        )
      ],
      defp(execute_json_get(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:json_get, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-00000000010f",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                },
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: true
                }
              ],
              named_args: %{
                "default" =>
                  {:%{}, [],
                   [
                     type_id: "00000000-0000-0000-0000-00000000010f",
                     optional: true,
                     set_of_type: false,
                     variadic: false
                   ]}
              },
              return_type_id: "00000000-0000-0000-0000-00000000010f",
              return_typemod: "OptionalType",
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::json_get",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Create a `float64` value."
          def(to_float64(s, fmt \\ :__edgedb_default__)) do
            execute_to_float64([s, fmt])
          end
        )
      ],
      defp(execute_to_float64(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_float64, positional, named, [
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
              return_type_id: "00000000-0000-0000-0000-0000000001ff",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::to_float64",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the date and time of the start of the current transaction."
          def(datetime_of_transaction(edgedb_elixir_named_arguments \\ [])) do
            execute_datetime_of_transaction([[], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_datetime_of_transaction(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:datetime_of_transaction, positional, named, [
            %{
              args: [],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-00000000010a",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::datetime_of_transaction",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Create a `int32` value."
          def(to_int32(s, fmt \\ :__edgedb_default__)) do
            execute_to_int32([s, fmt])
          end
        )
      ],
      defp(execute_to_int32(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_int32, positional, named, [
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
              return_type_id: "00000000-0000-0000-0000-0000000001ff",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::to_int32",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return JSON value represented by the input *string*."
          def(to_json(str)) do
            execute_to_json([str])
          end
        )
      ],
      defp(execute_to_json(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_json, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-00000000010f",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::to_json",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Create a `duration` value."
          def(to_duration(edgedb_elixir_named_arguments \\ [])) do
            execute_to_duration([[], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_to_duration(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_duration, positional, named, [
            %{
              args: [],
              named_args: %{
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
                "seconds" =>
                  {:%{}, [],
                   [
                     type_id: "00000000-0000-0000-0000-0000000001ff",
                     optional: true,
                     set_of_type: false,
                     variadic: false
                   ]}
              },
              return_type_id: "00000000-0000-0000-0000-00000000010e",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::to_duration",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Create a `decimal` value."
          def(to_decimal(s, fmt \\ :__edgedb_default__)) do
            execute_to_decimal([s, fmt])
          end
        )
      ],
      defp(execute_to_decimal(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:to_decimal, positional, named, [
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
              return_type_id: "00000000-0000-0000-0000-000000000108",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::to_decimal",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the input string with all *trim* characters removed from its start."
          def(str_trim_start(s, tr \\ :__edgedb_default__)) do
            execute_str_trim_start([s, tr])
          end
        )
      ],
      defp(execute_str_trim_start(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_trim_start, positional, named, [
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
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_trim_start",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return a lowercase copy of the input *string*."
          def(str_lower(s)) do
            execute_str_lower([s])
          end
        )
      ],
      defp(execute_str_lower(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_lower, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000101",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_lower",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Truncate the input duration to a particular precision."
          def(duration_truncate(dt, unit)) do
            execute_duration_truncate([dt, unit])
          end
        )
      ],
      defp(execute_duration_truncate(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:duration_truncate, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-00000000010e",
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
              return_type_id: "00000000-0000-0000-0000-00000000010e",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::duration_truncate",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the input string with all leftmost *trim* characters removed."
          def(str_ltrim(s, tr \\ :__edgedb_default__)) do
            execute_str_ltrim([s, tr])
          end
        )
      ],
      defp(execute_str_ltrim(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_ltrim, positional, named, [
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
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_ltrim",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return a version 1 UUID."
          def(uuid_generate_v1mc(edgedb_elixir_named_arguments \\ [])) do
            execute_uuid_generate_v1mc([[], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_uuid_generate_v1mc(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:uuid_generate_v1mc, positional, named, [
            %{
              args: [],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000100",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::uuid_generate_v1mc",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Generalized boolean `OR` applied to the set of *values*."
          def(any(vals)) do
            execute_any([vals])
          end
        )
      ],
      defp(execute_any(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:any, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000109",
                  optional: false,
                  set_of_type: true,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000109",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::any",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Extract a specific element of input datetime by name."
          def(datetime_get(dt, el)) do
            execute_datetime_get([dt, el])
          end
        )
      ],
      [
        (
          @doc "Extract a specific element of input datetime by name."
          def(datetime_get(dt, el)) do
            execute_datetime_get([dt, el])
          end
        )
      ],
      defp(execute_datetime_get(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:datetime_get, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-00000000010a",
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
          __name__: "std::datetime_get",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "A polymorphic function to test if a sequence contains a certain element."
          def(contains(haystack, needle)) do
            execute_contains([haystack, needle])
          end
        )
      ],
      [
        (
          @doc "A polymorphic function to test if a sequence contains a certain element."
          def(contains(haystack, needle)) do
            execute_contains([haystack, needle])
          end
        )
      ],
      [
        (
          @doc "A polymorphic function to test if a sequence contains a certain element."
          def(contains(haystack, needle)) do
            execute_contains([haystack, needle])
          end
        )
      ],
      defp(execute_contains(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:contains, positional, named, [
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
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000109",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::contains",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return set of key/value tuples that make up the JSON object."
          def(json_object_unpack(obj)) do
            execute_json_object_unpack([obj])
          end
        )
      ],
      defp(execute_json_object_unpack(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:json_object_unpack, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-00000000010f",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "79d8ede8-30f1-a805-fbc3-503ece3c9205",
              return_typemod: "SetOfType",
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::json_object_unpack",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return array elements as a set."
          def(array_unpack(array)) do
            execute_array_unpack([array])
          end
        )
      ],
      defp(execute_array_unpack(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:array_unpack, positional, named, [
            %{
              args: [
                %{
                  type_id: "5d31584b-3a5f-533d-3d64-fab0fdab61b3",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000001",
              return_typemod: "SetOfType",
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::array_unpack",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Check that the input set contains at least one element, raise\n         CardinalityViolationError otherwise."
          def(assert_exists(input)) do
            execute_assert_exists([input])
          end
        )
      ],
      defp(execute_assert_exists(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:assert_exists, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000001",
                  optional: false,
                  set_of_type: true,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000001",
              return_typemod: "SetOfType",
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::assert_exists",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the element of *array* at the specified *index*."
          def(array_get(array, idx, edgedb_elixir_named_arguments \\ [])) do
            execute_array_get([[idx, array], edgedb_elixir_named_arguments])
          end
        ),
        (
          @doc "Return the element of *array* at the specified *index*."
          def(array_get(array, idx)) do
            execute_array_get([array, idx])
          end
        )
      ],
      defp(execute_array_get(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:array_get, positional, named, [
            %{
              args: [
                %{
                  type_id: "5d31584b-3a5f-533d-3d64-fab0fdab61b3",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                },
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{
                "default" =>
                  {:%{}, [],
                   [
                     type_id: "00000000-0000-0000-0000-000000000001",
                     optional: true,
                     set_of_type: false,
                     variadic: false
                   ]}
              },
              return_type_id: "00000000-0000-0000-0000-000000000001",
              return_typemod: "OptionalType",
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::array_get",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Split string into array elements using the supplied delimiter."
          def(str_split(s, delimiter)) do
            execute_str_split([s, delimiter])
          end
        )
      ],
      defp(execute_str_split(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_split, positional, named, [
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
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "05f91774-15ea-9001-038e-092c1cad80af",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_split",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the input string with *trim* characters removed from both ends."
          def(str_trim(s, tr \\ :__edgedb_default__)) do
            execute_str_trim([s, tr])
          end
        )
      ],
      defp(execute_str_trim(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:str_trim, positional, named, [
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
              return_type_id: "00000000-0000-0000-0000-000000000101",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::str_trim",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Truncate the input datetime to a particular precision."
          def(datetime_truncate(dt, unit)) do
            execute_datetime_truncate([dt, unit])
          end
        )
      ],
      defp(execute_datetime_truncate(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:datetime_truncate, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-00000000010a",
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
              return_type_id: "00000000-0000-0000-0000-00000000010a",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::datetime_truncate",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return duration as total number of seconds in interval."
          def(duration_to_seconds(dur)) do
            execute_duration_to_seconds([dur])
          end
        )
      ],
      defp(execute_duration_to_seconds(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:duration_to_seconds, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-00000000010e",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-000000000108",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "std::duration_to_seconds",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ]
  ]
end
