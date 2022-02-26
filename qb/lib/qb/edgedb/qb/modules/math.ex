defmodule(QB.EdgeDB.QB.Modules.Math) do
  [
    [
      [
        (
          @doc "Round up to the nearest integer."
          def(ceil(x)) do
            execute_ceil([x])
          end
        )
      ],
      [
        (
          @doc "Round up to the nearest integer."
          def(ceil(x)) do
            execute_ceil([x])
          end
        )
      ],
      [
        (
          @doc "Round up to the nearest integer."
          def(ceil(x)) do
            execute_ceil([x])
          end
        )
      ],
      defp(execute_ceil(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:ceil, positional, named, [
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
          __name__: "math::ceil",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the population standard deviation of the input set."
          def(stddev_pop(vals)) do
            execute_stddev_pop([vals])
          end
        )
      ],
      [
        (
          @doc "Return the population standard deviation of the input set."
          def(stddev_pop(vals)) do
            execute_stddev_pop([vals])
          end
        )
      ],
      defp(execute_stddev_pop(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:stddev_pop, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
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
          __name__: "math::stddev_pop",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the arithmetic mean of the input set."
          def(mean(vals)) do
            execute_mean([vals])
          end
        )
      ],
      [
        (
          @doc "Return the arithmetic mean of the input set."
          def(mean(vals)) do
            execute_mean([vals])
          end
        )
      ],
      defp(execute_mean(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:mean, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
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
          __name__: "math::mean",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the natural logarithm of the input value."
          def(ln(x)) do
            execute_ln([x])
          end
        )
      ],
      [
        (
          @doc "Return the natural logarithm of the input value."
          def(ln(x)) do
            execute_ln([x])
          end
        )
      ],
      defp(execute_ln(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:ln, positional, named, [
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
          __name__: "math::ln",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the sample variance of the input set."
          def(var(vals)) do
            execute_var([vals])
          end
        )
      ],
      [
        (
          @doc "Return the sample variance of the input set."
          def(var(vals)) do
            execute_var([vals])
          end
        )
      ],
      defp(execute_var(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:var, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
                  optional: false,
                  set_of_type: true,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-0000000001ff",
              return_typemod: "OptionalType",
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "math::var",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the population variance of the input set."
          def(var_pop(vals)) do
            execute_var_pop([vals])
          end
        )
      ],
      [
        (
          @doc "Return the population variance of the input set."
          def(var_pop(vals)) do
            execute_var_pop([vals])
          end
        )
      ],
      defp(execute_var_pop(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:var_pop, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
                  optional: false,
                  set_of_type: true,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "00000000-0000-0000-0000-0000000001ff",
              return_typemod: "OptionalType",
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "math::var_pop",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the absolute value of the input *x*."
          def(abs(x)) do
            execute_abs([x])
          end
        )
      ],
      defp(execute_abs(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:abs, positional, named, [
            %{
              args: [
                %{
                  type_id: "6635a1ee-8a10-11ec-8b19-afdb38091631",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{},
              return_type_id: "6635a1ee-8a10-11ec-8b19-afdb38091631",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "math::abs",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the sample standard deviation of the input set."
          def(stddev(vals)) do
            execute_stddev([vals])
          end
        )
      ],
      [
        (
          @doc "Return the sample standard deviation of the input set."
          def(stddev(vals)) do
            execute_stddev([vals])
          end
        )
      ],
      defp(execute_stddev(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:stddev, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-0000000001ff",
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
          __name__: "math::stddev",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Round down to the nearest integer."
          def(floor(x)) do
            execute_floor([x])
          end
        )
      ],
      [
        (
          @doc "Round down to the nearest integer."
          def(floor(x)) do
            execute_floor([x])
          end
        )
      ],
      [
        (
          @doc "Round down to the nearest integer."
          def(floor(x)) do
            execute_floor([x])
          end
        )
      ],
      defp(execute_floor(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:floor, positional, named, [
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
          __name__: "math::floor",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the base 10 logarithm of the input value."
          def(lg(x)) do
            execute_lg([x])
          end
        )
      ],
      [
        (
          @doc "Return the base 10 logarithm of the input value."
          def(lg(x)) do
            execute_lg([x])
          end
        )
      ],
      defp(execute_lg(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:lg, positional, named, [
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
          __name__: "math::lg",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the logarithm of the input value in the specified *base*."
          def(log(x, edgedb_elixir_named_arguments \\ [])) do
            execute_log([[x], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_log(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:log, positional, named, [
            %{
              args: [
                %{
                  type_id: "00000000-0000-0000-0000-000000000108",
                  optional: false,
                  set_of_type: false,
                  variadic: false
                }
              ],
              named_args: %{
                "base" =>
                  {:%{}, [],
                   [
                     type_id: "00000000-0000-0000-0000-000000000108",
                     optional: false,
                     set_of_type: false,
                     variadic: false
                   ]}
              },
              return_type_id: "00000000-0000-0000-0000-000000000108",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "math::log",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ]
  ]
end