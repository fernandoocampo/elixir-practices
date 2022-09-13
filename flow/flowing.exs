defmodule Flowing do
  def if_do(bool_value) do
    if bool_value do
      "of course it's true"
    else
      "that's more false than false"
    end
  end

  def case_do(value) do
    case value do
      {4,5,6} ->
        "4,5,6"
      {7,8,9} ->
        "7,8,9"
      {1,2,3} ->
        "1,2,3"
      _ ->
        "this will match any value: #{Enum.join(Tuple.to_list(value))}"
    end
  end

  def cond_do(a, b) do
    cond do
      a+b == 3 ->
        "this is a three"
      a*b == 12 ->
        "this is a twelve"
      a == b ->
        "they are equal"
    end
  end

  def try_do() do
    try do
      throw(:hello)
    catch
      message -> "Got #{message}."
    after
      IO.puts("i'm the after clause.")
    end
  end

  def with_do(params) do
    with {:ok, age} <- parse_age(params["age"]),
       {:ok, name} <- parse_name(params["name"])
    do
      "age: #{age}, name: #{name}"
    else
      # nil -> {:error, ...} an example that we can match here too
      err -> err
    end
  end

  defp parse_age(nil), do: {:error, "age is required"}
  defp parse_age(age) when is_integer(age), do: {:ok, age}
  defp parse_age(_invalid), do: {:error, "age must be an integer"}

  defp parse_name(nil), do: {:error, "name is required"}
  defp parse_name(""), do: parse_name(nil)
  defp parse_name(name), do: {:ok, name}

end
