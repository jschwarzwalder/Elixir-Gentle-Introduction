defmodule CheaterTest do
  use ExUnit.Case
  doctest Cheater

  test "greets the world" do
    assert Cheater.hello() == :world
  end
end
