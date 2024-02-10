defmodule Solution do
  @spec eval_rpn(tokens :: [String.t()]) :: integer

  def eval_rpn(list) do
    convert_list(list, nil, nil) |> eval_rpn_helper
  end

  def eval_rpn_helper([res]), do: res

  def eval_rpn_helper(list) when is_list(list) do
    eval_rpn_helper(eval_rpn_consume(list))
  end

  def eval_rpn_consume([]), do: []

  def eval_rpn_consume([opn1, opn2, "+" | tail]), do: [opn1 + opn2 | tail]

  def eval_rpn_consume([opn1, opn2, "-" | tail]), do: [opn1 - opn2 | tail]

  def eval_rpn_consume([opn1, opn2, "*" | tail]), do: [opn1 * opn2 | tail]

  def eval_rpn_consume([opn1, opn2, "/" | tail]), do: [div(opn1, opn2) | tail]

  def eval_rpn_consume([head | tail]), do: [head | eval_rpn_consume(tail)]

  def convert_list([], :error, prev), do: [prev]

  def convert_list([], parse, _prev) do
    num = parse |> elem(0)
    [num]
  end

  def convert_list([head | tail], nil, nil) do
    convert_list(tail, Integer.parse(head), head)
  end

  def convert_list([head | tail], :error, prev) do
    [prev | convert_list(tail, Integer.parse(head), head)]
  end

  def convert_list([head | tail], parse, _prev) do
    num = parse |> elem(0)
    [num | convert_list(tail, Integer.parse(head), head)]
  end
end

Solution.eval_rpn(["2", "1", "+", "3", "*"])
|> IO.inspect()

Solution.eval_rpn(["4", "13", "5", "/", "+"])
|> IO.inspect()

Solution.eval_rpn(["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"])
|> IO.inspect()
