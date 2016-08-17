defmodule TELIXGRAM.Mixfile do
  use Mix.Project

  def project do
    [app: :telixgram,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpotion]]
  end

  defp deps do
    [
      {:httpotion, "~> 3.0.0"}
    ]
  end
end
