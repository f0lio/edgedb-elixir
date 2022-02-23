defmodule EdgeDB.QB.Generation.Generators.SetFnGenerator do
  alias EdgeDB.QB.Generation

  def generate(_params) do
    set_fn_def = define_set_fn()

    code =
      quote do
        unquote(set_fn_def)
      end

    %Generation.Module{name: Generation.module_name(Set), code: code}
  end

  def define_set_fn do
    cast_maps_mod = Generation.module_name(CastMaps)

    quote do
      def set do
        nil
      end

      def set([]) do
        nil
      end

      def set(exprs) do
        expressions = Enum.map(exprs, &unquote(cast_maps_mod).literal_to_type_set(&1))

        cond do
          Enum.all?(expressions, fn expr -> expr.__element__.__kind__ == :object end) ->
            EdgeDB.QB.Syntax.Path.to_expression(%{
              __kind__: :set,
              __element__:
                expressions
                |> Enum.map(fn expr ->
                  expr.__element__
                end)
                |> Enum.reduce(&EdgeDB.QB.Reflection.Hydrate.merge_object_types/2),
              __cardinality__:
                expressions
                |> Enum.map(fn expr ->
                  expr.__cardinality__
                end)
                |> EdgeDB.QB.Utils.Cardinality.merge_cardinalities_variadic(),
              __exprs__: expressions
            })

          Enum.all?(expressions, fn expr -> expr.__element__.__kind__ != :object end) ->
            EdgeDB.QB.Syntax.Path.to_expression(%{
              __kind__: :set,
              __element__:
                expressions
                |> Enum.map(fn expr ->
                  expr.__element__
                end)
                |> Enum.reduce(&unquote(cast_maps_mod).get_shared_parent_scalar/2),
              __cardinality__:
                expressions
                |> Enum.map(fn expr ->
                  expr.__cardinality__
                end)
                |> EdgeDB.QB.Utils.Cardinality.merge_cardinalities_variadic(),
              __exprs__: expressions
            })

          true ->
            args_repr =
              Enum.map_join(exprs, ", ", fn expr ->
                expr.__element__.__name__
              end)

            raise RuntimeError, "invalid arguments to set constructor: #{args_repr}"
        end
      end
    end
  end
end
