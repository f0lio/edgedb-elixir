defmodule EdgeDB.QB.Bool do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: EdgeDB.QB.Bool do
  def render(%EdgeDB.QB.Bool{value: value}) do
    EdgeDB.QB.Renderer.render(value)
  end
end
