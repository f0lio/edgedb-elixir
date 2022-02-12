defmodule EdgeDB.QB.Float64 do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: EdgeDB.QB.Float64 do
  def render(%EdgeDB.QB.Float64{value: value}) do
    EdgeDB.QB.Renderer.render(value)
  end
end
