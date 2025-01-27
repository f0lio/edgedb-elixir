defmodule Tests.EdgeDB.Protocol.Codecs.Builtin.ScalarTest do
  use Tests.Support.EdgeDBCase

  setup :edgedb_connection

  test "decoding custom scalar value", %{conn: conn} do
    value = "value"
    assert ^value = EdgeDB.query_single!(conn, "SELECT <short_str>'value'")
  end

  test "encoding as custom scalar value", %{conn: conn} do
    value = "value"
    assert ^value = EdgeDB.query_single!(conn, "SELECT <short_str>$0", [value])
  end
end
