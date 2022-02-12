defmodule EdgeDB.QB do
  alias EdgeDB.QB

  def render(term) do
    QB.Renderer.render(term)
  end

  def cast(type, term) do
    %QB.Cast{type: type, value: term}
  end
end
