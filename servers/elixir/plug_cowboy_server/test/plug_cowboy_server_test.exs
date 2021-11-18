defmodule PlugCowboyServerTest do
  use ExUnit.Case
  doctest PlugCowboyServer

  test "greets the world" do
    assert PlugCowboyServer.hello() == :world
  end
end
