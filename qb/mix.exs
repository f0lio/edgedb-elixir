defmodule QB.MixProject do
  use Mix.Project

  def project do
    [
      app: :qb,
      version: "0.0.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:edgedb, path: "../"},
      {:jason, "~> 1.2"}
    ]
  end
end
