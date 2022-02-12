defmodule EdgeDB.QB.Cast do
  defstruct [:type, :value]
end

defimpl EdgeDB.QB.Renderer, for: EdgeDB.QB.Cast do
  def render(%EdgeDB.QB.Cast{type: type, value: value}) do
    "<#{type}>#{EdgeDB.QB.Renderer.render(value)}"
  end
end
