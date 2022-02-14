defmodule QB.Std.Uuid do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: QB.Std.Uuid do
  def render(%QB.Std.Uuid{value: value}) do
    "<std::uuid>#{EdgeDB.QB.Renderer.render(value)}"
  end
end
