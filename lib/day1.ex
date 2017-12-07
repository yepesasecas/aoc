defmodule Day1 do
  def solution1(input) when is_binary(input) do
    input_list = String.graphemes(input)
    input_list_numbers = Enum.map input_list, fn (num)->
      {num, _} = Integer.parse(num)
      num
    end

    sum = circular_validation(input_list_numbers)
    day1_solution1(input_list_numbers, sum)
  end

  defp day1_solution1([first, first | []], sum), do: first + sum
  defp day1_solution1([_first, _second | []], sum), do: sum
  defp day1_solution1([first, first | rest], sum), do: day1_solution1([first | rest], sum + first)
  defp day1_solution1([_first, second | rest], sum), do: day1_solution1([second | rest], sum)

  defp circular_validation(input) when is_list(input) do
    first = List.first(input)
    last = List.last(input)
    if first == last do
      first
    else
      0
    end
  end

  def solution2(input) when is_binary(input) do
    input_list = String.graphemes(input)
    input_list_numbers = Enum.map input_list, fn (num)->
      {num, _} = Integer.parse(num)
      num
    end

    day1_solution2(input_list_numbers)
  end

  defp day1_solution2(input) when is_list(input) do
    length = length(input)
    last_index = length - 1
    Enum.reduce(0..last_index, 0, fn i, acc ->
      first = Enum.at(input, i)
      second_index = round(i + (length/2))
      if last_index < second_index, do: second_index = second_index - last_index - 1
      second = Enum.at(input, second_index)

      if first == second do
        acc + first
      else
        acc
      end
    end)
  end
end
