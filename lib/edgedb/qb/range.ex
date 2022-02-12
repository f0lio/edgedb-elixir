defmodule EdgeDB.QB.Range do
  defstruct [:value, :start_idx, :end_idx]
end

defimpl EdgeDB.QB.Renderer, for: EdgeDB.QB.Range do
  def render(%EdgeDB.QB.Range{value: value, start_idx: start_idx, end_idx: nil}) do
    "#{EdgeDB.QB.Renderer.render(value)}[#{EdgeDB.QB.Renderer.render(start_idx)}:]"
  end

  def render(%EdgeDB.QB.Range{value: value, start_idx: nil, end_idx: end_idx}) do
    "#{EdgeDB.QB.Renderer.render(value)}[:#{EdgeDB.QB.Renderer.render(end_idx)}]"
  end

  def render(%EdgeDB.QB.Range{value: value, start_idx: start_idx, end_idx: end_idx}) do
    "#{EdgeDB.QB.Renderer.render(value)}[#{EdgeDB.QB.Renderer.render(start_idx)}:#{EdgeDB.QB.Renderer.render(end_idx)}]"
  end
end
