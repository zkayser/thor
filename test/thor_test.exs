defmodule ThorTest do
  use ExUnit.Case
  doctest Thor

  defmodule Subject do
    use Thor

    cacheable(:my_assign)
    cacheable(:other_assign)
  end

  describe "use Thor" do
    test "generates a __thor_assigns__/0 function on the using module" do
      assert MapSet.equal?(
               MapSet.new(Subject.__thor_assigns__()),
               MapSet.new([:my_assign, :other_assign])
             )
    end
  end
end
