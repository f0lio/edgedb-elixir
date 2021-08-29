defmodule Tests.APITest do
  use EdgeDB.Case

  setup :edgedb_connection

  describe "EdgeDB.query/4" do
    test "returns EdgeDB.Set on succesful query", %{conn: conn} do
      assert {:ok, %EdgeDB.Set{}} = EdgeDB.query(conn, "SELECT 1")
    end

    test "returns error on failed query", %{conn: conn} do
      assert {:error, %EdgeDB.Protocol.Error{}} =
               EdgeDB.query(conn, "SELECT {1, 2, 3}", [], cardinality: :one)
    end
  end

  describe "EdgeDB.query!/4" do
    test "returns EdgeDB.Set on succesful query", %{conn: conn} do
      assert %EdgeDB.Set{} = EdgeDB.query!(conn, "SELECT 1")
    end

    test "raises error on failed query", %{conn: conn} do
      assert_raise EdgeDB.Protocol.Error, fn ->
        EdgeDB.query!(conn, "SELECT {1, 2, 3}", [], cardinality: :one)
      end
    end
  end

  describe "EdgeDB.query_single/4" do
    test "returns result on succesful query", %{conn: conn} do
      assert {:ok, 1} = EdgeDB.query_single(conn, "SELECT 1")
    end

    test "returns error on failed query", %{conn: conn} do
      assert_raise EdgeDB.Protocol.Error, fn ->
        EdgeDB.transaction(conn, fn conn ->
          EdgeDB.query_single!(conn, "SELECT {1, 2, 3}", [], cardinality: :one)
        end)
      end
    end
  end

  describe "EdgeDB.transaction/3" do
    test "commit result if no error occured", %{conn: conn} do
      {:ok, %EdgeDB.Object{id: user_id}} =
        EdgeDB.transaction(conn, fn conn ->
          EdgeDB.query_single!(conn, "INSERT User { image := '', name := 'username' }")
        end)

      %EdgeDB.Object{id: ^user_id} =
        EdgeDB.query_single!(conn, "DELETE User FILTER .id = <uuid>$0", [user_id])

      assert EdgeDB.Set.empty?(
               EdgeDB.query!(conn, "SELECT User FILTER .id = <uuid>$0", [user_id])
             )
    end

    test "automaticly rollbacks if error occured", %{conn: conn} do
      assert_raise RuntimeError, fn ->
        EdgeDB.transaction(conn, fn conn ->
          EdgeDB.query!(conn, "INSERT User { image := '', name := 'username' }")
          raise RuntimeError
        end)
      end

      assert EdgeDB.Set.empty?(EdgeDB.query!(conn, "SELECT User"))
    end
  end

  describe "EdgeDB.rollback/2" do
    test "rollbacks transaction", %{conn: conn} do
      {:error, :rollback} =
        EdgeDB.transaction(conn, fn conn ->
          EdgeDB.query!(conn, "INSERT User { image := '', name := 'username' }")
          EdgeDB.rollback(conn, :rollback)
        end)
    end
  end
end