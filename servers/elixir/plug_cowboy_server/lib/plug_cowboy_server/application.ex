defmodule PlugCowboyServer.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: PlugCowboyServer.Worker.start_link(arg)
      # {PlugCowboyServer.Worker, arg}
      {Plug.Cowboy, scheme: :http, plug: PlugCowboyServer.HelloWorldPlug, options: [port: 5000]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PlugCowboyServer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
