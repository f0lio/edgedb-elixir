# Usage

The basic user API for `edgedb-elixir` is provided by the `EdgeDB` module and in most cases you will use only it.
  The exception is when you want to [define custom codecs](pages/custom-codecs.md).

`EdgeDB` provides several functions for querying data from the database, which are named in `EdgeDB.query*/4` format.
  Transactions are supported with `EdgeDB.transaction/3` function and subtransactions (including nested ones)
  with `EdgeDB.subtransaction/2` function.

## Establishing a connection

`edgedb-elixir`, like official clients, allows a very flexible way to define how to connect to an instance.
  For more information, see `t:EdgeDB.connect_option/0`.

The examples on this page will involve connecting to an instance using
  [`edgedb projects`](https://www.edgedb.com/docs/cli/edgedb_project/index#edgedb-project).
  Run `edgedb project init` to initialize the project:

```bash
edgedb project init
```

### Database schema

Ensure that your database has the following schema:

```edgeql
module default {
    type User {
        required property name -> str {
            constraint exclusive;
        };
    }

    type Post {
        required property body -> str;

        required link author -> User;
        multi link comments -> Post;
    }
};
```

Let's fill the database with some data, which will be used in further examples:

```elixir
iex(1)> {:ok, pid} = EdgeDB.start_link()
iex(2)> EdgeDB.query!(pid, "
...(2)> WITH
...(2)>     p1 := (
...(2)>         INSERT Post {
...(2)>             body := 'Yes!',
...(2)>             author := (
...(2)>                 INSERT User {
...(2)>                     name := 'commentator1'
...(2)>                 }
...(2)>             )
...(2)>         }
...(2)>     ),
...(2)>     p2 := (
...(2)>         INSERT Post {
...(2)>             body := 'Absolutely amazing',
...(2)>             author := (
...(2)>                 INSERT User {
...(2)>                     name := 'commentator2'
...(2)>                 }
...(2)>             )
...(2)>         }
...(2)>     ),
...(2)>     p3 := (
...(2)>         INSERT Post {
...(2)>             body := 'FYI here is a link to the Elixir driver: https://hex.pm/packages/edgedb',
...(2)>             author := (
...(2)>                 INSERT User {
...(2)>                     name := 'commentator3'
...(2)>                 }
...(2)>             )
...(2)>         }
...(2)>     )
...(2)> INSERT Post {
...(2)>     body := 'EdgeDB is awesome! Try the Elixir driver for it',
...(2)>     author := (
...(2)>         INSERT User {
...(2)>             name := 'author1'
...(2)>         }
...(2)>     ),
...(2)>     comments := {p1, p2, p3}
...(2)> }
...(2)> ")
```

## Querying data from EdgeDB

Depending on the expected results of the query, you can use different functions to retrieve data from the database.
  This is called the cardinality of the result and is better explained in
  [the official documentation](https://www.edgedb.com/docs/reference/edgeql/cardinality#cardinality).

### Querying a set of elements

If you want to receive an `EdgeDB.Set` from your query, just use the `EdgeDB.query/4` or `EdgeDB.query!/4` functions.
  The difference between the two functions is that `EdgeDB.query/4` will return an `:ok` tuple with result
  if successful or a `:error`  tuple with `EdgeDB.Error` if an error occurred during the query execution.
  `EdgeDB.query!/4` will return a plain result if successful or raise `EdgeDB.Error` if error.

Let's query all existing posts with their bodies:

```elixir
iex(1)> {:ok, pid} = EdgeDB.start_link()
iex(2)> {:ok, posts} = EdgeDB.query(pid, "SELECT Post { body }")
{:ok,
 #EdgeDB.Set<{#EdgeDB.Object<body := "EdgeDB is awesome! Try the Elixir driver for it">,
  #EdgeDB.Object<body := "Yes!">, #EdgeDB.Object<body := "Absolutely amazing">,
  #EdgeDB.Object<body := "FYI here is a link to the Elixir driver: https://hex.pm/packages/edgedb">}>}
```

We can iterate over `EdgeDB.Set` and inspect each object separately:

```elixir
iex(3)> Enum.each(posts, fn %EdgeDB.Object{} = post ->
...(3)>   IO.inspect(post[:body], label: "post (#{inspect(post.id)})")
...(3)> end)
post ("3c5c8cf2-860f-11ec-a22a-2b0ab4e21d4b"): "EdgeDB is awesome! Try the Elixir driver for it"
post ("3c5c904e-860f-11ec-a22a-f7cdb9bcb510"): "Yes!"
post ("3c5c9256-860f-11ec-a22a-0343fa0961f3"): "Absolutely amazing"
post ("3c5c9378-860f-11ec-a22a-0713dfca8baa"): "FYI here is a link to the Elixir driver: https://hex.pm/packages/edgedb"
:ok
```

### Querying a single element

If you know that the query will return only one element or none, you can use `EdgeDB.query_single/4` and
  `EdgeDB.query_single!/4` functions. This function will automatically unpack the underlying `EdgeDB.Set`
  and return the requested item (or `nil` if the set is empty).

Let's query a post with a link to the Elixir driver for EdgeDB:

```elixir
iex(1)> {:ok, pid} = EdgeDB.start_link()
iex(2)> %EdgeDB.Object{} = post = EdgeDB.query_single!(pid, "SELECT Post FILTER contains(.body, 'https://hex.pm/packages/edgedb') LIMIT 1")
iex(3)> post.id
"3c5c9378-860f-11ec-a22a-0713dfca8baa"
```

If we try to select a `Post` that does not exist, `nil` will be returned:

```elixir
iex(4)> EdgeDB.query_single!(pid, "SELECT Post FILTER .body = 'lol' LIMIT 1")
nil
```

### Querying a requried single element

In case we want to ensure that the requested element must exist, we can use the functions `EdgeDB.query_required_single/4` and
  `EdgeDB.query_required_single!/4`. Instead of returning `nil` they will return `EdgeDB.Error` in case of a missing element:

```elixir
iex(5)> EdgeDB.query_required_single!(pid, "SELECT Post FILTER .body = 'lol' LIMIT 1")
** (EdgeDB.Error) NoDataError: expected result, but query did not return any data
```

## Transactions

The API for transactions is provided by the `EdgeDB.transaction/3` function:

```elixir
iex(1)> {:ok, pid} = EdgeDB.start_link()
iex(2)> {:ok, user} =
...(2)>  EdgeDB.transaction(pid, fn conn ->
...(2)>    EdgeDB.query_required_single!(conn, "INSERT User { name := <str>$username }", username: "user1")
...(2)>  end)
```

Transactions can be rollbacked using the `EdgeDB.rollback/2` function or automatically
  if an error has occurred inside a transaction block:

```elixir
iex(3)> {:error, :rollback} =
...(3)>  EdgeDB.transaction(pid, fn conn ->
...(3)>    %EdgeDB.Object{} = EdgeDB.query_required_single!(conn, "INSERT User { name := <str>$username }", username: "wrong_username")
...(3)>    EdgeDB.rollback(conn)
...(3)>  end)
iex(4)> EdgeDB.query_single!(pid, "SELECT User { name } FILTER .name = <str>$username", username: "wrong_username")
nil
```

Transactions are retriable. This means that if certain types of errors occur when querying data from the database,
  the transaction block can be automatically retried.

The following types of errors can be retried retried:
  * `TransactionConflictError` and its inheritors.
  * Network errors (e.g. a socket was closed).

As an example, let's create a transaction conflict to show how this works. In the first example, we will disable retries:

```elixir
iex(5)> callback = fn conn, body ->
...(5)>  Process.sleep(500)
...(5)>  EdgeDB.query!(conn, "UPDATE Post FILTER .author.id = <uuid>$user_id SET { body := <str>$new_body }", user_id: user.id, new_body: body)
...(5)>  Process.sleep(500)
...(5)> end
iex(6)> spawn(fn ->
...(6)>  {:ok, pid} = EdgeDB.start_link()
...(6)>  EdgeDB.transaction(pid, &callback.(&1, "new_body_1"))
...(6)> end)
iex(7)> EdgeDB.transaction(pid, &callback.(&1, "new_body_2"), retry: [transaction_conflict: [attempts: 0]])
** (EdgeDB.Error) TransactionSerializationError: could not serialize access due to concurrent update
```

Now let's execute the same thing but with enabled retries:

```elixir
iex(8)> spawn(fn ->
...(8)>  {:ok, pid} = EdgeDB.start_link()
...(8)>  EdgeDB.transaction(pid, &callback.(&1, "new_body_1"))
...(8)> end)
iex(9)> EdgeDB.transaction(pid, &callback.(&1, "new_body_2"))
{:ok, :ok}
```

All failed transactions will be retried until they succeed or until the number of retries exceeds the limit (the default is 3).

Note that `EdgeDB.transaction/3` calls cannot be nested. If you want to open a nested transaction,
  you should use `EdgeDB.subtransaction/2` instead:

```elixir
iex(1)> {:ok, pid} = EdgeDB.start_link()
iex(2)> {:ok, %EdgeDB.Set{}} =
...(2)>   EdgeDB.transaction(pid, fn tx_conn ->
...(2)>     EdgeDB.subtransaction!(tx_conn, fn subtx_conn1 ->
...(2)>       EdgeDB.subtransaction!(subtx_conn1, fn subtx_conn2 ->
...(2)>         EdgeDB.query!(subtx_conn2, "INSERT User { name := <str>$username }", username: "user_subtx2")
...(2)>         EdgeDB.rollback(subtx_conn2, continue: true)
...(2)>         EdgeDB.query!(subtx_conn2, "INSERT User { name := <str>$username }", username: "user_subtx2_ver_2")
...(2)>         :ok
...(2)>       end)
...(2)>       EdgeDB.query!(subtx_conn1, "INSERT User { name := <str>$username }", username: "user_subtx1")
...(2)>       EdgeDB.query!(subtx_conn1, "SELECT User { name } FILTER .name ILIKE '%subtx%'")
...(2)>     end)
...(2)>   end)
{:ok,
 #EdgeDB.Set<{#EdgeDB.Object<name := "user_subtx2_ver_2">,
  #EdgeDB.Object<name := "user_subtx1">}>}
```

## Example

You can also check out an example application using this driver to see how to work with it:

https://github.com/nsidnev/edgedb-phoenix-example
