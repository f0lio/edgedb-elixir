defmodule EdgeDB.QB.UUID do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: EdgeDB.QB.UUID do
  def render(%EdgeDB.QB.UUID{value: value}) do
    "<std::uuid>#{EdgeDB.QB.Renderer.render(value)}"
  end
end
