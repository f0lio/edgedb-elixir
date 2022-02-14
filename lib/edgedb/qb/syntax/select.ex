defmodule EdgeDB.QB.Syntax.Select do
  import EdgeDB.QB.Runtime

  alias EdgeDB.QB.Caches

  alias EdgeDB.QB.Syntax.{
    Path,
    Literal
  }

  alias EdgeDB.QB.Reflection.Hydrate

  defguard is_literal(term)
           when is_bitstring(term) or
                  is_struct(term, Date) or
                  is_struct(term, Time) or
                  is_struct(term, DateTime) or
                  is_struct(term, EdgeDB.Duration) or
                  is_struct(term, EdgeDB.RelativeDuration) or
                  is_struct(term, EdgeDB.ConfigMemory)

  def select(term) when is_literal(term) do
    literal_expr = generated(CastMapping).literal_to_scalar_type(term)

    %{
      __kind__: :select,
      __element__: literal_expr.__element__,
      __cardinality__: literal_expr.__cardinality__,
      __expr__: literal_expr,
      __modifiers__: %{}
    }
    |> to_select()
    |> Path.to_expression()
  end

  def select(expr, shape \\ []) do
    {expr, shape} =
      if expr[:__element__] do
        {expr, shape}
      else
        {free_object(), expr}
      end

    if length(shape) == 0 do
      if expr.__element__.__kind__ == :object do
        %{
          __kind__: :select,
          __element__: %{
            __kind__: :object,
            __name__: "#{expr.__element__.__name__}",
            __pointers__: expr.__element__.__pointers__,
            __shape__: %{id: true}
          },
          __cardinality__: expr.__cardinality__,
          __expr__: expr,
          __modifiers__: %{}
        }
        |> to_select()
        |> Path.to_expression()
      else
        %{
          __kind__: :select,
          __element__: expr.__element__,
          __cardinality__: expr.__cardinality__,
          __expr__: expr,
          __modifiers__: %{}
        }
        |> to_select()
        |> Path.to_expression()
      end
    else
      _clean_scoped_exprs? = Caches.size(Caches.existing_scopes()) == 0

      %{modifiers: _mods, shape: _shape, scope: _scope} = resolve_shape(shape, expr)
    end
  end

  def to_select(expr) do
    expr
  end

  defp resolve_shape(shape, expr) do
    modifiers = %{}
    shape = %{}

    scope =
      if expr.__element__.__kind__ == :object do
        Path.get_scoped_expr(expr, Caches.existing_scopes())
      else
        expr
      end
  end

  defp free_object do
    # TODO
    %{
      __kind__: :path_node,
      __element__: :error,
      __cardinality__: :one,
      __parent__: nil,
      __exclusive__: true,
      __scope_root__: nil
    }
  end
end
