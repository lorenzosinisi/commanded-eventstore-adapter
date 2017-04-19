defmodule Commanded.EventStore.Adapters.EventStore.Mixfile do
  use Mix.Project

  def project do
    [
      app: :commanded_eventstore_adapter,
       version: "0.1.0",
       elixir: "~> 1.4",
       build_embedded: Mix.env == :prod,
       start_permanent: Mix.env == :prod,
       deps: deps(),
     ]
  end

  def application do
    [
      extra_applications: [
        :logger,
      ],
    ]
  end

  defp deps do
    [
      {:commanded, path: "~/src/commanded"},
      {:eventstore, path: "~/src/eventstore"},
    ]
  end
end