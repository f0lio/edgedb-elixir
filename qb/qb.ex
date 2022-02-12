defmodule QB do
  def str(string) when is_binary(string) do
    QB.Str.new(string)
  end

  def str(term) do
    cast("std::str", term)
  end

  def int64(number) when is_integer(number) do
    %QB.Int64{value: number}
  end

  def int64(term) do
    cast("std::int64", term)
  end

  def float64(float) when is_float(float) do
    %QB.Float64{value: float}
  end

  def float64(term) do
    cast("std::float64", term)
  end

  def bool(bool) when is_boolean(bool) do
    %QB.Bool{value: bool}
  end

  def bool(term) do
    cast("std::bool", term)
  end

  def bigint(number) when is_integer(number) do
    %QB.BigInt{value: number}
  end

  def bigint(term) do
    cast("std::bigint", term)
  end

  def decimal(number) when is_number(number) do
    %QB.Decimal{value: number}
  end

  def decimal(term) do
    cast("std::decimal", term)
  end

  def uuid(uuid) when is_binary(uuid) do
    %QB.UUID{value: uuid}
  end

  def uuid(term) do
    cast("std::uuid", term)
  end

  def bytes(binary_data) when is_bitstring(binary_data) do
    %QB.Bytes{value: binary_data}
  end

  def bytes(term) do
    cast("std::bytes", term)
  end

  def enum(enum_mod, value) when is_binary(value) do
    %QB.Enum{enum: enum_mod, value: value}
  end

  def enum(enum_mod, value) when is_atom(value) do
    %QB.Enum{enum: enum_mod, value: value}
  end

  def enum(enum_mod, term) do
    %QB.Enum{enum: enum_mod, value: term}
  end

  def datetime(%Date{} = d) do
    QB.DateTime.from_date(d)
  end

  def datetime(%DateTime{} = dt) do
    QB.DateTime.from_datetime(dt)
  end

  def datetime(string) when is_binary(string) do
    QB.DateTime.from_string(string)
  end

  def datetime(term) do
    cast("std::datetime", term)
  end
end
