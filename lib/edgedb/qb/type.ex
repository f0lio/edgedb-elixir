defmodule EdgeDB.QB.Type do
  defstruct [:type]
end

defimpl EdgeDB.QB.Renderer, for: EdgeDB.QB.Type do
  def render(%EdgeDB.QB.Type{type: type}) do
    to_string(type)
  end
end
