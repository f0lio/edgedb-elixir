defmodule Mix.Tasks.Edgedb.Generate do
  @moduledoc """
  Generate Elixir modules for EdgeQL query builder.
  """

  use Mix.Task

  alias EdgeDB.QB.Generation

  @shortdoc "Generate Elixir modules for EdgeQL query builder"

  @impl Mix.Task
  def run(_args) do
    Application.ensure_all_started(:edgedb)

    {:ok, pid} = EdgeDB.start_link(pool_size: 5)

    pid
    |> Generation.generate_modules()
    |> Enum.each(&Generation.Module.save/1)

    :ok
  end
end
