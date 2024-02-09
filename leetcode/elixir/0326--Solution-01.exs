defmodule Solution do
  require Integer
  @spec is_power_of_three(n :: integer) :: boolean

  def is_power_of_three(n) when n <= 0, do: false

  def is_power_of_three(1), do: true

  def is_power_of_three(n) when 0 !== rem(n, 3), do: false

  def is_power_of_three(n), do: is_power_of_three(div(n, 3))
end

# Example 1
IO.puts(Solution.is_power_of_three(27))

# Example 2
IO.puts(Solution.is_power_of_three(0))

# Example 3
IO.puts(Solution.is_power_of_three(-1))

