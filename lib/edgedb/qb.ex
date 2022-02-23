defmodule EdgeDB.QB do
  def enabled? do
    config() != []
  end

  def namespace do
    get(:namespace, QB.EdgeDB.QB)
  end

  def path do
    get(:path, "qb/lib/edgedb/qb")
  end

  defp config do
    Application.get_env(:edgedb, :qb, [])
  end

  defp get(key, default \\ nil) do
    Application.get_env(:edgedb, :qb)[key] || default
  end
end
