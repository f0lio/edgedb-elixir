defmodule QB.Std.Float64 do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: QB.Std.Float64 do
  def render(%QB.Std.Float64{value: value}) do
    EdgeDB.QB.Renderer.render(value)
  end
end
