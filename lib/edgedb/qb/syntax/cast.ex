defmodule EdgeDB.QB.Syntax.Cast do
  alias EdgeDB.QB.Syntax.Path

  def cast(target, expr) do
    cardinality =
      if is_nil(expr) do
        :empty
      else
        expr.__cardinality__
      end

    Path.to_expression(%{
      __element__: target,
      __cardinality__: cardinality,
      __expr__: expr,
      __kind__: :cast
    })
  end
end
