# Flowing

## If condition

```sh
➜  elixir-practices git:(main) iex flow/flowing.exs
iex(1)> Flowing.if_do(true)
"of course it's true"
iex(2)> Flowing.if_do(false)
"that's more false than false"
```

## Case

```sh
➜  elixir-practices git:(main) iex flow/flowing.exs
iex(1)> value = {1,2,3}
{1, 2, 3}
iex(2)> Flowing.case_do(value)
"1,2,3"
iex(3)> data = {2,5,9}       
{2, 5, 9}
iex(2)> Flowing.case_do(data)
"this will match any value: 259"
```

## Cond.

```sh
➜  elixir-practices git:(main) ✗ iex flow/flowing.exs
iex(1)> a = 2
2
iex(2)> b = 2
2
iex(3)> Flowing.cond_do(a,b)
"they are equal"
iex(4)> a = 1
1
iex(5)> Flowing.cond_do(a,b)
"this is a three"
iex(6)> a = 2
2
iex(7)> b = 6
6
iex(8)> Flowing.cond_do(a,b)
"this is a twelve"
```

## With

`with` is a lot like a `|>` except that it allows you to match each intermediary result. The pipe operator is great when all functions are acting on a consistent piece of data. It falls apart when we introduce variability.

with statements are similar to case statements in that they execute tasks if the conditions are fulfilled. 

The with control structure follows a rigid sequence of statements that are like a chain. In order to do the intended task, all the functions should return the desired output (Pattern Matching); otherwise, the program will be redirected away from the task to take the necessary actions.

```sh
➜  elixir-practices git:(main) ✗ iex flow/flowing.exs
iex(2)> params = %{"age" => 30, "name" => "belson"}
%{"age" => 30, "name" => "belson"}
iex(3)> Flowing.with_do(params)
"age: 30, name: belson"
iex(4)> params = %{"age" => "35", "name" => "chimenea"}
%{"age" => "35", "name" => "chimenea"}
iex(5)> Flowing.with_do(params)
{:error, "age must be an integer"}
```

## try/catch

```sh
➜  elixir-practices git:(main) ✗ iex flow/flowing.exs
iex(1)> Flowing.try_do()
i'm the after clause.
"Got hello."
```

str = "hello" \
str |> length()   \      # → 5
str |> codepoints() \    # → ["h", "e", "l", "l", "o"]
str |> slice(2..-1)  \   # → "llo"
str |> split(" ")   \    # → ["hello"]
str |> capitalize()  \   # → "Hello"
str |> match(regex) \