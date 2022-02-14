defmodule QB.Std.DateTime do
  defstruct [:value]

  def from_date(%Date{} = date) do
    %__MODULE__{value: DateTime.new!(date, Time.new!(0, 0, 0))}
  end

  def from_datetime(%DateTime{} = datetime) do
    %__MODULE__{value: datetime}
  end

  def from_string(string) do
    with {:error, _reason} <- Date.from_iso8601(string),
         {:error, _reason} <- DateTime.from_iso8601(string) do
      raise RuntimeError
    else
      {:ok, %Date{} = date} ->
        from_date(date)

      {:ok, %DateTime{} = datetime} ->
        from_datetime(datetime)
    end
  end
end

defimpl EdgeDB.QB.Renderer, for: QB.Std.DateTime do
  def render(%QB.Std.DateTime{value: value}) do
    "<std::datetime>#{EdgeDB.QB.Renderer.render(value)}"
  end
end
