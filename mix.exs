defmodule LineOne.MixProject do
  use Mix.Project

  def project do
    [
      app: :line_one,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {LineOne.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:exprotobuf, "1.2.17"},
      {:gpb, "4.15.2", override: true}
    ]
  end
end
