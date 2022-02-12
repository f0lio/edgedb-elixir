defmodule EdgeDB.QB.Str do
  @behaviour Access

  defstruct [
    :value,
    :index,
    :slice
  ]

  def new(string) do
    str = %__MODULE__{value: string}

    %__MODULE__{
      str
      | slice: create_slice_fn(str),
        index: create_index_fn(str)
    }
  end

  def fetch(%__MODULE__{} = value, idx) when is_integer(idx) do
    {:ok, %EdgeDB.QB.Index{value: value, idx: idx}}
  end

  def fetch(%__MODULE__{} = value, start_idx..end_idx) do
    {:ok, %EdgeDB.QB.Range{value: value, start_idx: start_idx, end_idx: end_idx}}
  end

  def get_and_update(_data, _key, _function) do
    raise RuntimeError
  end

  def pop(_data, _key) do
    raise RuntimeError
  end

  defp create_slice_fn(%__MODULE__{} = str) do
    fn
      start_idx, nil ->
        %EdgeDB.QB.Range{value: str, start_idx: start_idx}

      nil, end_idx ->
        %EdgeDB.QB.Range{value: str, end_idx: end_idx}

      start_idx, end_idx ->
        %EdgeDB.QB.Range{value: str, start_idx: start_idx, end_idx: end_idx}
    end
  end

  defp create_index_fn(%__MODULE__{} = str) do
    fn idx ->
      %EdgeDB.QB.Index{value: str, idx: idx}
    end
  end
end

defimpl EdgeDB.QB.Renderer, for: EdgeDB.QB.Str do
  def render(%EdgeDB.QB.Str{value: value}) do
    EdgeDB.QB.Renderer.render(value)
  end
end
