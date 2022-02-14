defmodule QB.Std.Bigint do
  defstruct [:value]
end

defimpl EdgeDB.QB.Renderer, for: QB.Std.Bigint do
  def render(%QB.Std.Bigint{value: value}) do
    EdgeDB.QB.Renderer.render(value)
  end
end
