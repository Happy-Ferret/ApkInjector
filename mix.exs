defmodule Injector.Mixfile do
  use Mix.Project

  def project do
    [app: :injector,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: [main_module: Injector.Cmd],
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [
      mod: {Injector, []},
      applications: [
      :logger,
      :eex,
      :poison,
      :yaml_elixir,
      ]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:poison, "~> 2.0"},
      {:yaml_elixir, "~> 1.0.0"},
      {:yamerl, "~> 0.4.0"},
    ]
  end
end
