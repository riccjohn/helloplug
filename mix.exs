defmodule Helloplug.MixProject do
  use Mix.Project

  def project do
    [
      app: :helloplug,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:logger, :sqlite_ecto, :ecto, :cowboy, :plug],
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 1.0.0"},
      {:plug, "~> 1.0"},
      {:plug_cowboy, "~> 1.0"},
      {:sqlite_ecto, "~> 1.0.0"},
      {:ecto, "~> 1.0"}
    ]
  end
end
