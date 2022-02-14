defmodule EdgeDB.QB do
  def enabled? do
    Application.get_env(:edgedb, :qb, false)
  end
end
