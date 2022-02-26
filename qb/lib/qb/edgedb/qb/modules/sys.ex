defmodule(QB.EdgeDB.QB.Modules.Sys) do
  [
    [
      [
        (
          @doc "Return the server version as a tuple."
          def(get_version(edgedb_elixir_named_arguments \\ [])) do
            execute_get_version([[], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_get_version(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:get_version, positional, named, [
            %{
              args: [],
              named_args: %{},
              return_type_id: "8ab09b46-19b3-f179-85ae-5e1a1f465de8",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "sys::get_version",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the server version as a string."
          def(get_version_as_str(edgedb_elixir_named_arguments \\ [])) do
            execute_get_version_as_str([[], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_get_version_as_str(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:get_version_as_str, positional, named, [
            %{
              args: [],
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
          __name__: "sys::get_version_as_str",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the name of the current database as a string."
          def(get_current_database(edgedb_elixir_named_arguments \\ [])) do
            execute_get_current_database([[], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_get_current_database(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:get_current_database, positional, named, [
            %{
              args: [],
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
          __name__: "sys::get_current_database",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ],
    [
      [
        (
          @doc "Return the isolation level of the current transaction."
          def(get_transaction_isolation(edgedb_elixir_named_arguments \\ [])) do
            execute_get_transaction_isolation([[], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_get_transaction_isolation(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(
            :get_transaction_isolation,
            positional,
            named,
            [
              %{
                args: [],
                named_args: %{},
                return_type_id: "7160f52a-8a10-11ec-9ce7-e363b6134179",
                return_typemod: nil,
                preserves_optionality: false
              }
            ]
          )

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "sys::get_transaction_isolation",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ]
  ]
end