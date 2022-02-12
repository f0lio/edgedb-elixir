defmodule EdgeDB.QB.Bytes do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: EdgeDB.QB.Bytes do
  def render(%EdgeDB.QB.Bytes{value: value}) do
    EdgeDB.QB.Renderer.render(value)
  end
end
