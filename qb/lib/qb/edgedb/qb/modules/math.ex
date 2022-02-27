defmodule(QB.EdgeDB.QB.Modules.Math) do
  [
    def(ceil(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("math::ceil", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000110",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000110",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000108",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000108",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :ceil,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(stddev_pop(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("math::stddev_pop", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000108",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000108",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :stddev_pop,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(mean(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("math::mean", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000108",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000108",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :mean,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(ln(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("math::ln", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000108",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000108",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :ln,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(var(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("math::var", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000108",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000108",
            return_typemod: "OptionalType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :var,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(var_pop(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("math::var_pop", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000108",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000108",
            return_typemod: "OptionalType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :var_pop,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(abs(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("math::abs", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "6635a1ee-8a10-11ec-8b19-afdb38091631",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "6635a1ee-8a10-11ec-8b19-afdb38091631",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :abs,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(stddev(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("math::stddev", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000108",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000108",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :stddev,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(floor(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("math::floor", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000110",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000110",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000108",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000108",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :floor,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(lg(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("math::lg", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000108",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000108",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :lg,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(log(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("math::log", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000108",
                variadic: false
              }
            ],
            named_args: %{
              "base" => %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000108",
                variadic: false
              }
            },
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000108",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :log,
        __args__: args,
        __named_args__: named_args
      })
    end
  ]
end