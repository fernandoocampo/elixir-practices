# Maps

## Printer

```sh
➜  elixir-practices git:(main) ✗ iex maps/printer.exs

iex(1)> user = %{
...(1)>   name: "John",
...(1)>   city: "Melbourne"
...(1)> }
%{city: "Melbourne", name: "John"}
iex(2)> Printer.print_map(user)
Hello, John
:ok
```