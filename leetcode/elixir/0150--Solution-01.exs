defmodule Solution do
  @spec eval_rpn(tokens :: [String.t()]) :: integer

  def eval_rpn([res]), do: Integer.parse(res) |> elem(0)

  def eval_rpn(list) when is_list(list) do
    eval_rpn(eval_rpn_helper(list))
  end

  def eval_rpn_helper([]), do: []

  def eval_rpn_helper([opn1, opn2, "+" | tail]) do
    num1 = Integer.parse(opn1) |> elem(0)
    num2 = Integer.parse(opn2) |> elem(0)
    [to_string(num1 + num2) | tail]
  end

  def eval_rpn_helper([opn1, opn2, "-" | tail]) do
    num1 = Integer.parse(opn1) |> elem(0)
    num2 = Integer.parse(opn2) |> elem(0)
    [to_string(num1 - num2) | tail]
  end

  def eval_rpn_helper([opn1, opn2, "*" | tail]) do
    num1 = Integer.parse(opn1) |> elem(0)
    num2 = Integer.parse(opn2) |> elem(0)
    [to_string(num1 * num2) | tail]
  end

  def eval_rpn_helper([opn1, opn2, "/" | tail]) do
    num1 = Integer.parse(opn1) |> elem(0)
    num2 = Integer.parse(opn2) |> elem(0)
    [to_string(div(num1, num2)) | tail]
  end

  def eval_rpn_helper([head | tail]), do: [head | eval_rpn_helper(tail)]
end

Solution.eval_rpn(["2", "1", "+", "3", "*"])
|> IO.inspect()

Solution.eval_rpn(["4", "13", "5", "/", "+"])
|> IO.inspect()

Solution.eval_rpn([
  "10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"
])
|> IO.inspect()
