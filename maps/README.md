# Maps

## Printer

```sh
➜  elixir-practices git:(main) ✗ iex maps/printer.exs

iex(1)> user = %{
...(1)>   name: "Homer",
...(1)>   city: "Springfield"
...(1)> }
%{city: "Springfield", name: "Homer"}
iex(2)> Printer.print_map(user)
Hello, Homer
:ok
```