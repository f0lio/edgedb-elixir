defmodule QB.Std.Int64 do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: QB.Std.Int64 do
  def render(%QB.Std.Int64{value: value}) do
    EdgeDB.QB.Renderer.render(value)
  end
end
