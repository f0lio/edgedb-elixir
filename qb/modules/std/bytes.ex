defmodule QB.Std.Bytes do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: QB.Std.Bytes do
  def render(%QB.Std.Bytes{value: value}) do
    EdgeDB.QB.Renderer.render(value)
  end
end
