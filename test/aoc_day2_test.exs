defmodule AocDay2Test do
  use ExUnit.Case
  doctest Aoc

  test "Day2.solution1(example_input)" do
    input =
      """
      5 1 9 5
      7 5 3
      2 4 6 8
      """
    assert Aoc.day2_solution1(input) == 18
  end

  test "Day2.solution1(Aoc.day2_input())" do
    # IO.inspect Aoc.day2_solution1(Aoc.day2_input())
    assert Aoc.day2_solution1(Aoc.day2_input()) == 46402
  end
end
