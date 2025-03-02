defmodule ThorTest do
  use ExUnit.Case
  doctest Thor

  test "greets the world" do
    assert Thor.hello() == :world
  end
end
