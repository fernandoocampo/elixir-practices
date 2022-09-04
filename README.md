# elixir-practices
This project is just for practicing elixir basics.

## .ex and .exs files

* `ex` is for compiled code.
* `exs` is for interpreted code.

## Compile code.

* you can use `elixirc`

```sh
➜  elixir-practices git:(main) ✗ elixirc hello.ex
Hello, world!
```

* you can run shell and compile.

```sh
➜  elixir-practices git:(main) ✗ iex
iex(1)> c("hello.ex")
Hello, world!
[Greeter]
```

## Hello world

Take a look at `hello.exs`. To test it, run the interactive mode as showed below.

```sh
➜  elixir-practices git:(main) ✗ iex
iex(1)> Greeter.greet("luis")
Hello, luis!
:ok
```

## Variables

```elixir
iex(2)> name = "Luis"
"Luis"
iex(3)> name
"Luis"
```
## IEX

### Recompiling and reloading

* By file name.

```sh
iex> c "lib/myfile.ex"
```

* By module.

```sh
iex> r MyModule
```

## References

* [Elixir cheatsheet](https://devhints.io/elixir)
* [Comprehensive guide](https://www.mitchellhanberg.com/the-comprehensive-guide-to-elixirs-for-comprehension/)