# pattern matching

* The match operator is not only used to match against simple values, but it is also useful for destructuring more complex data types. 

```sh
iex> {a, b, c} = {:hello, "world", 42}
{:hello, "world", 42}
iex> a
:hello
iex> b
"world"
iex> c
42
```

* reader.exs

```sh
➜  elixir-practices git:(main) ✗ iex match/reader.exs
iex(1)> user = %{name: "Tom", age: 23}
%{age: 23, name: "Tom"}
iex(2)> Reader.print_username(user)
"Tom"
```