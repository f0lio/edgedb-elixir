defmodule EdgeDB.QB.Decimal do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: EdgeDB.QB.Decimal do
  def render(%EdgeDB.QB.Decimal{value: value}) do
    EdgeDB.QB.Renderer.render(value)
  end
end
