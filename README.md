# Helloplug

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `helloplug` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:helloplug, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/helloplug](https://hexdocs.pm/helloplug).

---

To connect Helloplug to cowboy:
```zsh
$ iex -S mix
```
Start a live server
```elixir
{:ok, _} = Plug.Adapters.Cowboy.http Helloplug, []
```

Visit `localhost:4000`

Reload session to update with any code changes
```elixir
r Helloplug
```