defmodule Day1 do
  def solution(input) when is_binary(input) do
    input_list = String.graphemes(input)
    input_list_numbers = Enum.map input_list, fn (num)->
      {num, _} = Integer.parse(num)
      num
    end

    sum = circular_validation(input_list_numbers)
    day1_solution(input_list_numbers, sum)
  end

  defp day1_solution([first, first | []], sum), do: first + sum
  defp day1_solution([_first, _second | []], sum), do: sum
  defp day1_solution([first, first | rest] = input, sum) when is_list(input), do: day1_solution([first | rest], sum + first)
  defp day1_solution([_first, second | rest] = input, sum) when is_list(input), do: day1_solution([second | rest], sum)

  defp circular_validation(input) when is_list(input) do
    first = List.first(input)
    last = List.last(input)
    if first == last do
      first
    else
      0
    end
  end
end
