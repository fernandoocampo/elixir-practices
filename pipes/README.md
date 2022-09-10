# Piping

```sh
➜  elixir-practices git:(main) ✗ iex pipes/piping.exs
iex(1)> user = %{name: "Homer", city: "Springfield"}
%{city: "Springfield", name: "Homer"}
iex(2)> Piping.do_something(user)
```