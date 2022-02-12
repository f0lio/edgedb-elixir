defprotocol EdgeDB.QB.Renderer do
  @spec render(term()) :: String.t()
  def render(term)
end

defimpl EdgeDB.QB.Renderer, for: BitString do
  def render(string) when is_binary(string) do
    "'#{string}'"
  end

  def render(binary_string) when is_bitstring(binary_string) do
    "b'#{binary_string}'"
  end
end

defimpl EdgeDB.QB.Renderer, for: Integer do
  def render(number) do
    to_string(number)
  end
end

defimpl EdgeDB.QB.Renderer, for: Float do
  def render(number) do
    to_string(number)
  end
end

defimpl EdgeDB.QB.Renderer, for: Atom do
  def render(bool) when is_boolean(bool) do
    to_string(bool)
  end

  def render(term) do
    raise Protocol.UndefinedError, "implementation is undefined for #{inspect(term)}"
  end
end

defimpl EdgeDB.QB.Renderer, for: DateTime do
  def render(%DateTime{} = dt) do
    "'#{DateTime.to_iso8601(dt)}'"
  end
end
