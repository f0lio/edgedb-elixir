defmodule Tests.EdgeDB.Protocol.Codecs.Custom.NotRegisteredStringTest do
  use Tests.Support.EdgeDBCase

  import ExUnit.CaptureLog

  alias Tests.Support.Codecs

  test "skipping codecs which type names can't be fetched from database" do
    assert capture_log(fn ->
             start_supervised(
               {EdgeDB,
                codecs: [Codecs.NotRegisteredString],
                show_sensitive_data_on_connection_error: true}
             )

             Process.sleep(1000)
           end) =~
             "skip registration of codec for unknown type with name \"default::not_registered_string\""
  end
end
