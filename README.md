# Elixir driver for EdgeDB

Documentation: https://hexdocs.pm/edgedb

How to use:

```elixir
iex(1)> {:ok, conn} = EdgeDB.start_link() # NOTE: you should initialize EdgeDB project first
iex(2)> arg = [16, 13, 2, 42]
iex(3)> ^arg = EdgeDB.query_required_single!(conn, "SELECT <array<int64>>$arg", arg: arg)
[16, 13, 2, 42]
```

# TODO:
1. Support for lazy pool with automatic resize via server hints
2. Query builder with schema reflection (long term)

Query Builder (WIP):

Query builder branch is completly broken right now.
It contains a partially rewritten TS query builder + approximate examples of using QB API.

Current Plan:
1. rewrite TS query builder on Elixir
2. refactor
3. stabilize

Current limitations:

* emoji in generated code (will result to generation error)
