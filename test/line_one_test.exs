defmodule LineOneTest do
  use ExUnit.Case
  doctest LineOne

  test "greets the world" do
    assert LineOne.hello() == :world
  end
end
