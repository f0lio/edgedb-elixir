defmodule QB.Std.Bool do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: QB.Std.Bool do
  def render(%QB.Std.Bool{value: value}) do
    EdgeDB.QB.Renderer.render(value)
  end
end
