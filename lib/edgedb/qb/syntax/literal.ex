defmodule EdgeDB.QB.Syntax.Literal do
  alias EdgeDB.QB.Syntax.Path

  def literal(type, value) do
    Path.to_expression(%{
      __element__: type,
      __cardinality__: :one,
      __kind__: :literal,
      __value__: value
    })
  end
end
