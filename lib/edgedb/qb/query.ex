defmodule EdgeDB.QB.Syntax.Query do
  alias EdgeDB.QB.{
    Caches,
    EdgeQL
  }

  alias EdgeDB.QB.Syntax.{
    Select,
    Params
  }

  @runnable_expression_kinds ~w(
    select
    update
    insert
    insert_unless_conflict
    delete
    for
    with
    with_params
  )a

  def run(pid, expr, args \\ []) do
    expr =
      if expr.__kind__ in @runnable_expression_kinds do
        expr
      else
        case Caches.get(:wrapped_expr_cache, expr) do
          nil ->
            select_expr = Select.select(expr)
            Caches.set(:wrapped_expr_cache, expr, select_expr)
            select_expr


          expr ->
            expr
        end
      end

    args = Params.stringify_complex_params(expr, args)

    if expr.__cardinality__ == :one or expr.__cardinality__ == :at_most_one do
      EdgeDB.query_single(pid, EdgeQL.from_expression(expr), args)
    else
      EdgeDB.query(pid, EdgeQL.from_expression(expr), args)
    end
  end
end
