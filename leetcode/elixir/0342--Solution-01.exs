defmodule Solution do
  require Integer
  @spec is_power_of_four(n :: integer) :: boolean

  def is_power_of_four(n) when n <= 0, do: false

  def is_power_of_four(1), do: true

  def is_power_of_four(n) when 0 !== rem(n, 4), do: false

  def is_power_of_four(n), do: is_power_of_four(div(n, 4))
end

# Example 1
IO.puts(Solution.is_power_of_four(16))

# Example 2
IO.puts(Solution.is_power_of_four(5))

# Example 3
IO.puts(Solution.is_power_of_four(-1))

