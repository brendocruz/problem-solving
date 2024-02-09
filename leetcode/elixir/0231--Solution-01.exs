defmodule Solution do
  require Integer
  @spec is_power_of_two(n :: integer) :: boolean

  def is_power_of_two(n) when n <= 0, do: false

  def is_power_of_two(1), do: true

  def is_power_of_two(n) when 1 === rem(n, 2), do: false

  def is_power_of_two(n), do: is_power_of_two(div(n, 2))
end

# Example 1
IO.puts(Solution.is_power_of_two(1))

# Example 2
IO.puts(Solution.is_power_of_two(16))

# Example 3
IO.puts(Solution.is_power_of_two(3))

