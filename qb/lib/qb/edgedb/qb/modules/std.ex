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
    def(str_lpad(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_lpad", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_lpad,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(str_pad_end(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_pad_end", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_pad_end,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_str(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::to_str", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010a",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010e",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
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
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000110",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "05f91774-15ea-9001-038e-092c1cad80af",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010f",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010b",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010c",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010d",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000111",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000108",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_str,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(assert_single(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::assert_single", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000001",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-000000000001",
            return_typemod: "OptionalType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :assert_single,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(count(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::count", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000001",
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
        __name__: :count,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(all(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::all", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000109",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000109",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :all,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(enumerate(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::enumerate", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000001",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "9c27acd9-0932-6050-c7b0-c7410e2e0a85",
            return_typemod: "SetOfType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :enumerate,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(re_replace(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::re_replace", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{
              "flags" => %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            },
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :re_replace,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(sequence_next(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::sequence_next", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "6f1f91f9-8a10-11ec-8c7d-619274614b24",
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
        __name__: :sequence_next,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_float32(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::to_float32", args, [
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
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_float32,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(min(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::min", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000001",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-000000000001",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "6635a1ee-8a10-11ec-8b19-afdb38091631",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "6635a1ee-8a10-11ec-8b19-afdb38091631",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "663d299d-8a10-11ec-8771-93e1a9b330f4",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "663d299d-8a10-11ec-8771-93e1a9b330f4",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-00000000010a",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-00000000010a",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-00000000010e",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-00000000010e",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-00000000010b",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-00000000010b",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-00000000010c",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-00000000010c",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-00000000010d",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-00000000010d",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "44a76fab-349d-00e9-396b-1000d7e967da",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "44a76fab-349d-00e9-396b-1000d7e967da",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "076e1d6f-f104-88b2-0632-d53171d9c827",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "076e1d6f-f104-88b2-0632-d53171d9c827",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "82ea7b30-73d3-c79c-86fb-b253f194f53e",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "82ea7b30-73d3-c79c-86fb-b253f194f53e",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "63acbf06-4c0c-67ac-c508-50a5ef4f4b16",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "63acbf06-4c0c-67ac-c508-50a5ef4f4b16",
            return_typemod: "OptionalType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :min,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(str_trim_end(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_trim_end", args, [
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_trim_end,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(str_title(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_title", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_title,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(bytes_get_bit(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::bytes_get_bit", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000102",
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
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :bytes_get_bit,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(len(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::len", args, [
          %{
            args: [
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
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000102",
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
                type_id: "5d31584b-3a5f-533d-3d64-fab0fdab61b3",
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
        __name__: :len,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(str_rtrim(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_rtrim", args, [
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_rtrim,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(array_agg(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::array_agg", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000001",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "5d31584b-3a5f-533d-3d64-fab0fdab61b3",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :array_agg,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(json_array_unpack(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::json_array_unpack", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010f",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010f",
            return_typemod: "SetOfType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :json_array_unpack,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(find(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::find", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
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
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000102",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000102",
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
                type_id: "5d31584b-3a5f-533d-3d64-fab0fdab61b3",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000001",
                variadic: false
              },
              %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
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
        __name__: :find,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(re_test(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::re_test", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
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
            return_type_id: "00000000-0000-0000-0000-000000000109",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :re_test,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(str_upper(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_upper", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_upper,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(str_repeat(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_repeat", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_repeat,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(datetime_of_statement(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::datetime_of_statement", args, [
          %{
            args: [],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010a",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :datetime_of_statement,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(random(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::random", args, [
          %{
            args: [],
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
        __name__: :random,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_datetime(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::to_datetime", args, [
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
            return_type_id: "00000000-0000-0000-0000-00000000010a",
            return_typemod: nil
          },
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
            return_type_id: "00000000-0000-0000-0000-00000000010a",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010b",
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
            return_type_id: "00000000-0000-0000-0000-00000000010a",
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
            return_type_id: "00000000-0000-0000-0000-00000000010a",
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
            return_type_id: "00000000-0000-0000-0000-00000000010a",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_datetime,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(re_match(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::re_match", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
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
            return_type_id: "05f91774-15ea-9001-038e-092c1cad80af",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :re_match,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(assert_distinct(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::assert_distinct", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000001",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-000000000001",
            return_typemod: "SetOfType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :assert_distinct,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_int64(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::to_int64", args, [
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
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_int64,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(re_match_all(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::re_match_all", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
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
            return_type_id: "05f91774-15ea-9001-038e-092c1cad80af",
            return_typemod: "SetOfType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :re_match_all,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(sum(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::sum", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
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
        __name__: :sum,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(sequence_reset(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::sequence_reset", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "6f1f91f9-8a10-11ec-8c7d-619274614b24",
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
                type_id: "6f1f91f9-8a10-11ec-8c7d-619274614b24",
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
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :sequence_reset,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_bigint(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::to_bigint", args, [
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
            return_type_id: "00000000-0000-0000-0000-000000000110",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_bigint,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(str_pad_start(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_pad_start", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_pad_start,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(datetime_current(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::datetime_current", args, [
          %{
            args: [],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010a",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :datetime_current,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(json_typeof(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::json_typeof", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010f",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :json_typeof,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(array_join(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::array_join", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "05f91774-15ea-9001-038e-092c1cad80af",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :array_join,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(str_rpad(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_rpad", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_rpad,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(round(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::round", args, [
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
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000108",
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
            return_type_id: "00000000-0000-0000-0000-000000000108",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :round,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_int16(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::to_int16", args, [
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
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_int16,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(max(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::max", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000001",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-000000000001",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "6635a1ee-8a10-11ec-8b19-afdb38091631",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "6635a1ee-8a10-11ec-8b19-afdb38091631",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "663d299d-8a10-11ec-8771-93e1a9b330f4",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "663d299d-8a10-11ec-8771-93e1a9b330f4",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-00000000010a",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-00000000010a",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-00000000010e",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-00000000010e",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-00000000010b",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-00000000010b",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-00000000010c",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-00000000010c",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-00000000010d",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "00000000-0000-0000-0000-00000000010d",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "44a76fab-349d-00e9-396b-1000d7e967da",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "44a76fab-349d-00e9-396b-1000d7e967da",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "076e1d6f-f104-88b2-0632-d53171d9c827",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "076e1d6f-f104-88b2-0632-d53171d9c827",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "82ea7b30-73d3-c79c-86fb-b253f194f53e",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "82ea7b30-73d3-c79c-86fb-b253f194f53e",
            return_typemod: "OptionalType"
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "63acbf06-4c0c-67ac-c508-50a5ef4f4b16",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: true,
            return_type_id: "63acbf06-4c0c-67ac-c508-50a5ef4f4b16",
            return_typemod: "OptionalType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :max,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(json_get(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::json_get", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010f",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: true
              }
            ],
            named_args: %{
              "default" => %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010f",
                variadic: false
              }
            },
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010f",
            return_typemod: "OptionalType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :json_get,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_float64(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::to_float64", args, [
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
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_float64,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(datetime_of_transaction(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::datetime_of_transaction", args, [
          %{
            args: [],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010a",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :datetime_of_transaction,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_int32(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::to_int32", args, [
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
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_int32,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_json(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::to_json", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010f",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_json,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_duration(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::to_duration", args, [
          %{
            args: [],
            named_args: %{
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
              "seconds" => %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            },
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010e",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_duration,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(to_decimal(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::to_decimal", args, [
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
            return_type_id: "00000000-0000-0000-0000-000000000108",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :to_decimal,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(str_trim_start(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_trim_start", args, [
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_trim_start,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(str_lower(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_lower", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_lower,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(duration_truncate(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::duration_truncate", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010e",
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
            return_type_id: "00000000-0000-0000-0000-00000000010e",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :duration_truncate,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(str_ltrim(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_ltrim", args, [
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_ltrim,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(uuid_generate_v1mc(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::uuid_generate_v1mc", args, [
          %{
            args: [],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000100",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :uuid_generate_v1mc,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(any(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::any", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000109",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000109",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :any,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(datetime_get(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::datetime_get", args, [
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
            return_type_id: "00000000-0000-0000-0000-0000000001ff",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010b",
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
        __name__: :datetime_get,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(contains(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::contains", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
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
            return_type_id: "00000000-0000-0000-0000-000000000109",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000102",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000102",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000109",
            return_typemod: nil
          },
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "5d31584b-3a5f-533d-3d64-fab0fdab61b3",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000001",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000109",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :contains,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(json_object_unpack(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::json_object_unpack", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010f",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "79d8ede8-30f1-a805-fbc3-503ece3c9205",
            return_typemod: "SetOfType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :json_object_unpack,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(array_unpack(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::array_unpack", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "5d31584b-3a5f-533d-3d64-fab0fdab61b3",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000001",
            return_typemod: "SetOfType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :array_unpack,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(assert_exists(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::assert_exists", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: true,
                type_id: "00000000-0000-0000-0000-000000000001",
                variadic: false
              }
            ],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000001",
            return_typemod: "SetOfType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :assert_exists,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(array_get(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::array_get", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "5d31584b-3a5f-533d-3d64-fab0fdab61b3",
                variadic: false
              },
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-0000000001ff",
                variadic: false
              }
            ],
            named_args: %{
              "default" => %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000001",
                variadic: false
              }
            },
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-000000000001",
            return_typemod: "OptionalType"
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :array_get,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(str_split(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_split", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
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
            return_type_id: "05f91774-15ea-9001-038e-092c1cad80af",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_split,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(str_trim(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::str_trim", args, [
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
            return_type_id: "00000000-0000-0000-0000-000000000101",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :str_trim,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(datetime_truncate(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::datetime_truncate", args, [
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
            return_type_id: "00000000-0000-0000-0000-00000000010a",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :datetime_truncate,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(duration_to_seconds(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("std::duration_to_seconds", args, [
          %{
            args: [
              %{
                optional: false,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-00000000010e",
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
        __name__: :duration_to_seconds,
        __args__: args,
        __named_args__: named_args
      })
    end
  ]
end