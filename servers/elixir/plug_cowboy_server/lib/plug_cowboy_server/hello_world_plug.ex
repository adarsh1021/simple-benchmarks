# ref - https://elixirschool.com/en/lessons/misc/plug

defmodule PlugCowboyServer.HelloWorldPlug do
  import Plug.Conn

  def init(options), do: options

  def call(conn, _opts) do
    conn
    |> send_resp(200, "hello world")
  end
end
