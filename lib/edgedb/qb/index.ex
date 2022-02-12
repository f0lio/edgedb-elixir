defmodule EdgeDB.QB.Index do
  defstruct [:value, :idx]
end

defimpl EdgeDB.QB.Renderer, for: EdgeDB.QB.Index do
  def render(%EdgeDB.QB.Index{value: value, idx: idx}) do
    "#{EdgeDB.QB.Renderer.render(value)}[#{EdgeDB.QB.Renderer.render(idx)}]"
  end
end
