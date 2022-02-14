defmodule QB.Std.Decimal do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: QB.Std.Decimal do
  def render(%QB.Std.Decimal{value: value}) do
    EdgeDB.QB.Renderer.render(value)
  end
end
