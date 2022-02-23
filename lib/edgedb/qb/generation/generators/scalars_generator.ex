defmodule EdgeDB.QB.Generation.Generators.ScalarsGenerator do
  alias EdgeDB.QB.Generation
  alias EdgeDB.QB.Utils

  def generate(%{types: types}) do
    types
    |> Enum.reject(fn {_id, type} ->
      type.kind != "scalar" or type.name == "std::anyenum"
    end)
    |> Enum.map(fn {_id, type} ->
      {mod, name} = Utils.Generation.split_name(type.name)

      if type.enum_values != [] do
        %EdgeDB.QB.Generation.Module{
          name: Generation.module_name(Modules, [mod, name]),
          code: generate_enum(type)
        }
      else
        %EdgeDB.QB.Generation.Module{
          name: Generation.module_name(Modules, mod),
          code: generate_scalar(type)
        }
      end
    end)
  end

  defp generate_scalar(type) do
    {_mod, name} = Utils.Generation.split_name(type.name)

    scalar_name =
      name
      |> Macro.underscore()
      |> String.to_atom()

    quote bind_quoted: [scalar_name: scalar_name, type_id: type.id] do
      def unquote(scalar_name)() do
        EdgeDB.QB.Reflection.Hydrate.make_type(
          unquote(type_id),
          &EdgeDB.QB.Syntax.Literal.literal/2
        )
      end

      def unquote(scalar_name)(value) do
        EdgeDB.QB.Reflection.Hydrate.make_type(
          unquote(type_id),
          &EdgeDB.QB.Syntax.Literal.literal/2
        ).__executor__.(value)
      end
    end
  end

  defp generate_enum(type) do
    {_mod, name} = Utils.Generation.split_name(type.name)

    enum_fn_name =
      name
      |> Macro.underscore()
      |> String.to_atom()

    atom_values =
      Enum.map(type.enum_values, fn value ->
        value
        |> Macro.underscore()
        |> String.to_atom()
      end)

    atom_access_funs =
      Enum.map(atom_values, fn value ->
        quote do
          def unquote(value)() do
            enum()[unquote(value)]
          end
        end
      end)

    string_to_atom_value_converters =
      Enum.map(type.enum_values, fn value ->
        atom_value =
          value
          |> Macro.underscore()
          |> String.to_atom()

        quote do
          defp to_atom_value(unquote(value)) do
            unquote(atom_value)
          end
        end
      end)

    quote do
      @atom_values unquote(atom_values)
      @string_values unquote(type.enum_values)

      def __type__ do
        :enum
      end

      def unquote(enum_fn_name)() do
        enum()
      end

      def unquote(enum_fn_name)(value) when value in @atom_values do
        enum()[value]
      end

      def unquote(enum_fn_name)(value) when value in @string_values do
        enum()[to_atom_value(value)]
      end

      unquote(atom_access_funs)
      unquote(string_to_atom_value_converters)

      defp enum do
        EdgeDB.QB.Reflection.Hydrate.make_type(
          unquote(type.id),
          &EdgeDB.QB.Syntax.Literal.literal/2
        )
      end
    end
  end
end
