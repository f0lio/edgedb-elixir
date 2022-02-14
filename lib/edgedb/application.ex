defmodule EdgeDB.Application do
  @moduledoc false

  use Application

  @impl Application
  def start(_type, _args) do
    if EdgeDB.QB.enabled?() do
      EdgeDB.QB.Caches.initialize_caches()
    end

    children = [
      EdgeDB.Borrower
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: EdgeDB.Supervisor)
  end
end
