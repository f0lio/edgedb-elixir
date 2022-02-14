defmodule EdgeDB.QB.Proxy do
  @behaviour Access

  defstruct [
    :__handler__
  ]

  def new!(target, handler) do
    Map.merge(target, %__MODULE__{__handler__: handler})
  end

  def destruct!(%__MODULE__{} = target) do
    Map.drop(target, [:__struct__, :__handler__])
  end

  @impl Access
  def fetch(%__MODULE__{__handler__: handler} = target, key) do
    handler.(target, key)
  end

  @impl Access
  def get_and_update(_proxy, _key, _function) do
    raise RuntimeError
  end

  @impl Access
  def pop(_data, _key) do
    raise RuntimeError
  end
end
