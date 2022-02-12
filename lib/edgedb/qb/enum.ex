defmodule EdgeDB.QB.Enum do
  defstruct [:enum, :value]
end

defimpl EdgeDB.QB.Renderer, for: EdgeDB.QB.Enum do
  def render(%EdgeDB.QB.Enum{enum: enum, value: value}) do
    cond do
      is_binary(value) ->
        "#{enum.__type__()}.#{value}"

      is_atom(value) ->
        "#{enum.__type__()}.#{value}"

      true ->
        "<#{enum.__type__()}>#{EdgeDB.QB.Renderer.render(value)}"
    end
  end
end
