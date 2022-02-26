defmodule(QB.EdgeDB.QB.Modules.Cfg) do
  [
    (
      scalar_name = :memory
      type_id = "00000000-0000-0000-0000-000000000130"

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
          @doc ""
          def(get_config_json(edgedb_elixir_named_arguments \\ [])) do
            execute_get_config_json([[], edgedb_elixir_named_arguments])
          end
        )
      ],
      defp(execute_get_config_json(positional \\ [], named \\ [])) do
        {return_type, cardinality, args, named_args} =
          EdgeDB.QB.Syntax.Funcops.resolve_overload(:get_config_json, positional, named, [
            %{
              args: [],
              named_args: %{
                "max_source" =>
                  {:%{}, [],
                   [
                     type_id: "00000000-0000-0000-0000-000000000101",
                     optional: true,
                     set_of_type: false,
                     variadic: false
                   ]},
                "sources" =>
                  {:%{}, [],
                   [
                     type_id: "05f91774-15ea-9001-038e-092c1cad80af",
                     optional: true,
                     set_of_type: false,
                     variadic: false
                   ]}
              },
              return_type_id: "00000000-0000-0000-0000-00000000010f",
              return_typemod: nil,
              preserves_optionality: false
            }
          ])

        EdgeDB.QB.Syntax.Path.to_expression(%{
          __kind__: :function,
          __element__: return_type,
          __cardinality__: cardinality,
          __name__: "cfg::get_config_json",
          __args__: positional,
          __named_args__: named_args
        })
      end
    ]
  ]
end