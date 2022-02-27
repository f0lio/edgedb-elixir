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
    def(get_config_json(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("cfg::get_config_json", args, [
          %{
            args: [],
            named_args: %{
              "max_source" => %{
                optional: true,
                set_of_type: false,
                type_id: "00000000-0000-0000-0000-000000000101",
                variadic: false
              },
              "sources" => %{
                optional: true,
                set_of_type: false,
                type_id: "05f91774-15ea-9001-038e-092c1cad80af",
                variadic: false
              }
            },
            preserves_optionality: false,
            return_type_id: "00000000-0000-0000-0000-00000000010f",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :get_config_json,
        __args__: args,
        __named_args__: named_args
      })
    end
  ]
end