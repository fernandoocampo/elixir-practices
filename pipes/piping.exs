defmodule Piping do
  def do_something(source) do
    source
    |> get_name()
    |> print()
  end

  def get_name(%{name: value}) do
    value
  end

  def print(value) do
    IO.puts "value:" <> value
  end
end
