defmodule EdgeDB.QB.Proxy do
  @behaviour Access

  defstruct [
    :__proxy_handler__
  ]

  def new!(target, handler) do
    Map.merge(target, %__MODULE__{__proxy_handler__: handler})
  end

  def destruct!(%__MODULE__{} = target) do
    Map.drop(target, [:__struct__, :__proxy_handler__])
  end

  @impl Access
  def fetch(%__MODULE__{__proxy_handler__: handler} = target, key) do
    handler.(target, key)
  end

  @impl Access
  def get_and_update(_proxy, _key, _function) do
    raise RuntimeError, "#{__MODULE__} doesn't support mutation"
  end

  @impl Access
  def pop(_data, _key) do
    raise RuntimeError, "#{__MODULE__} doesn't support mutation"
  end
end
