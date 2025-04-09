defmodule LearnDockerTest do
  use ExUnit.Case
  doctest LearnDocker

  test "greets the world" do
    assert LearnDocker.hello() == :world
  end
end
