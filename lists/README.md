# Lists

Playing with lists.

## Printer

```sh
➜  elixir-practices git:(main) ✗ iex printer.exs

Interactive Elixir (1.13.4) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> users = [ "Tom", "Dick", "Harry" ]
["Tom", "Dick", "Harry"]
iex(2)> Printer.printList(users)
Hello Tom
Hello Dick
Hello Harry
[:ok, :ok, :ok]
```