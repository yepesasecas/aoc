defmodule AocDay1Test do
  use ExUnit.Case
  doctest Aoc

  test "Day1.solution1(1122)" do
    assert Aoc.day1_solution1("1122") == 3
  end

  test "Day1.solution1(1111)" do
    assert Aoc.day1_solution1("1111") == 4
  end

  test "Day1.solution1(1234)" do
    assert Aoc.day1_solution1("1234") == 0
  end

  test "Day1.solution1(91212129)" do
    assert Aoc.day1_solution1("91212129") == 9
  end

  test "Day1.solution1(Aoc.day1_input())" do
    # IO.inspect Aoc.day1_solution1(Aoc.day1_input)
    assert Aoc.day1_solution1(Aoc.day1_input) == 1119
  end

  test "Day1.solution2(1212)" do
    assert Aoc.day1_solution2("1212") == 6
  end

  test "Day1.solution2(1221)" do
    assert Aoc.day1_solution2("1221") == 0
  end

  test "Day1.solution2(123425)" do
    assert Aoc.day1_solution2("123425") == 4
  end

  test "Day1.solution2(123123)" do
    assert Aoc.day1_solution2("123123") == 12
  end

  test "Day1.solution2(12131415)" do
    assert Aoc.day1_solution2("12131415") == 4
  end

  test "Day1.solution2(Aoc.day1_input())" do
    # IO.inspect Aoc.day1_solution2(Aoc.day1_input)
    assert Aoc.day1_solution2(Aoc.day1_input) == 1420
  end
end
