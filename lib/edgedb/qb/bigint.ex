defmodule EdgeDB.QB.BigInt do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: EdgeDB.QB.BigInt do
  def render(%EdgeDB.QB.BigInt{value: value}) do
    EdgeDB.QB.Renderer.render(value)
  end
end
