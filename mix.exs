defmodule Rnbw.MixProject do
  use Mix.Project

  def project do
    [
      app: :rnbw,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "Rnbw",
      source_url: "https://github.co/arthurstomp/rnbw",
      docs: [
        main: "Rnbw",
        extras: ["README.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Rnbw.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:heimdall, git: "https://github.com/arthurstomp/heimdall", tag: "1.0"},
      {:plug_cowboy, "~> 2.0"},
      {:excoveralls, "~> 0.10", only: :test},
      {:dialyxir, "~> 1.0.0-rc.4", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:ecto_sql, "~> 3.0"},
      {:postgrex, "~> 0.14.1"},
    ]
  end
end
