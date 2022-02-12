defmodule EdgeDB.QB.Int64 do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: EdgeDB.QB.Int64 do
  def render(%EdgeDB.QB.Int64{value: value}) do
    EdgeDB.QB.Renderer.render(value)
  end
end
