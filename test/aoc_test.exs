defmodule AocTest do
  use ExUnit.Case
  doctest Aoc

  test "Day1.solution(1122)" do
    assert Aoc.day1_solution("1122") == 3
  end

  test "Day1.solution(1111)" do
    assert Aoc.day1_solution("1111") == 4
  end

  test "Day1.solution(1234)" do
    assert Aoc.day1_solution("1234") == 0
  end

  test "Day1.solution(91212129)" do
    assert Aoc.day1_solution("91212129") == 9
  end

  test "Day1.solution(Aoc.day1_input())" do
    assert Aoc.day1_solution(Aoc.day1_input) == 1119
  end
end
