defmodule Printer do
  def printList(items) do
    Enum.map(items, fn item ->
      IO.puts "Hello " <> item
    end)
  end
end
