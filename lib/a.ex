# defmodule A do
#   import QB

#   def a do
#     test_literals()

#     :ok
#   end

#   def test_literals do
#     test_primitives()
#     test_strings()
#     test_enums()
#     test_datetime()
#   end

#   def test_primitives do
#     str("a")
#     |> render()
#     |> IO.inspect()

#     int64(123)
#     |> render()
#     |> IO.inspect()

#     float64(123.456)
#     |> render()
#     |> IO.inspect()

#     bool(true)
#     |> render()
#     |> IO.inspect()

#     bigint(12345)
#     |> render()
#     |> IO.inspect()

#     decimal("1234.1234n")
#     |> render()
#     |> IO.inspect()

#     uuid("0423a4f2-b94c-4972-aaf9-621ea04d02fa")
#     |> render()
#     |> IO.inspect()

#     bytes("binary data")
#     |> render()
#     |> IO.inspect()
#   end

#   def test_strings do
#     my_string = str("hello world")

#     my_string[5]
#     |> render()
#     |> IO.inspect()

#     my_string[2..5]
#     |> render()
#     |> IO.inspect()

#     my_string.slice.(nil, 5)
#     |> render()
#     |> IO.inspect()

#     my_string.slice.(2, nil)
#     |> render()
#     |> IO.inspect()

#     my_string = str("hello world")
#     start_idx = int64(2)
#     end_idx = int64(5)

#     my_string.index.(start_idx)
#     |> render()
#     |> IO.inspect()

#     my_string.slice.(start_idx, end_idx)
#     |> render()
#     |> IO.inspect()

#     my_string.slice.(nil, end_idx)
#     |> render()
#     |> IO.inspect()

#     my_string.slice.(start_idx, nil)
#     |> render()
#     |> IO.inspect()
#   end

#   def test_enums do
#     enum(Default.Colors, "green")
#     |> render()
#     |> IO.inspect()

#     enum(Sys.VersionStage, "beta")
#     |> render()
#     |> IO.inspect()
#   end

#   def test_datetime do
#     datetime(Date.new!(1999, 1, 1))
#     |> render()
#     |> IO.inspect()

#     datetime("1999-01-01")
#     |> render()
#     |> IO.inspect()

#     my_local_date = Date.new!(1776, 6, 4)

#     Cal.local_date(my_local_date)
#     |> render()
#     |> IO.inspect()

#     # my_local_time = Time.new!(13, 15, 0)

#     # Cal.local_time(my_local_time)
#     # |> render()
#     # |> IO.inspect()

#     # my_local_date_time = NaiveDateTime.new!(1776, 06, 04, 13, 15, 0)

#     # Cal.local_datetime(my_local_date_time)
#     # |> render()
#     # |> IO.inspect()

#     # # <std::duration>'5 minutes'
#     # cast(duration(), str("5 minutes"))
#     # |> render()
#     # |> IO.inspect()

#     # # <cal::local_datetime>'1999-03-31T15:17:00'
#     # cast(Cal.local_datetime(), str("1999-03-31T15:17:00"))
#     # |> render()
#     # |> IO.inspect()

#     # # <cal::local_date>'1999-03-31'
#     # cast(Cal.local_date(), str("1999-03-31"))
#     # |> render()
#     # |> IO.inspect()

#     # # <cal::local_time>'15:17:00'
#     # cast(Cal.local_time(), str("15:17:00"))
#     # |> render()
#     # |> IO.inspect()
#   end
# end
