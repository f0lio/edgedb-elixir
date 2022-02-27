defmodule(QB.EdgeDB.QB.Modules.Sys) do
  [
    def(get_version(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("sys::get_version", args, [
          %{
            args: [],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "8ab09b46-19b3-f179-85ae-5e1a1f465de8",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :get_version,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(get_version_as_str(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("sys::get_version_as_str", args, [
          %{
            args: [],
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
        __name__: :get_version_as_str,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(get_current_database(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("sys::get_current_database", args, [
          %{
            args: [],
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
        __name__: :get_current_database,
        __args__: args,
        __named_args__: named_args
      })
    end,
    def(get_transaction_isolation(args \\ [])) do
      %{return_type: return_type, cardinality: cardinality, args: args, named_args: named_args} =
        EdgeDB.QB.Syntax.Funcops.resolve_overload("sys::get_transaction_isolation", args, [
          %{
            args: [],
            named_args: %{},
            preserves_optionality: false,
            return_type_id: "7160f52a-8a10-11ec-9ce7-e363b6134179",
            return_typemod: nil
          }
        ])

      EdgeDB.QB.Syntax.Path.to_expression(%{
        __kind__: :function,
        __element__: return_type,
        __cardinality__: cardinality,
        __name__: :get_transaction_isolation,
        __args__: args,
        __named_args__: named_args
      })
    end
  ]
end