defmodule Day2 do
  def solution1(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&row_parse(&1))
    |> Enum.map(&row_min_max(&1))
    |> Enum.map(&row_diff(&1))
    |> Enum.sum()
  end

  defp row_parse(row) do
    row
    |> String.split(" ", trim: true)
    |> Enum.map(&integer_parse(&1))
  end

  defp integer_parse(str) do
    {int, _} = Integer.parse(str)
    int
  end

  defp row_min_max(row), do: {Enum.min(row), Enum.max(row)}

  defp row_diff({min, max}), do: max - min

  def solution2(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&row_parse(&1))
    |> Enum.map(&row_divisibles(&1))
    |> Enum.map(&row_divide(&1))
    |> Enum.sum()
  end

  defp row_divisibles([x | tail]) do
    if div = Enum.find(tail, fn y -> rem(x, y) == 0 || rem(y, x) == 0 end) do
      {x, div}
    else
      row_divisibles(tail)
    end
  end

  defp row_divide({x, y}) when x > y, do: round(x/y)
  defp row_divide({x, y}) when x < y, do: round(y/x)
end
