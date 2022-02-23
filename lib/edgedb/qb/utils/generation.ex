defmodule EdgeDB.QB.Utils.Generation do
  @scalar_to_literal_mapping %{
    "std::int16" => %{
      guard: :is_integer
    },
    "std::int32" => %{
      guard: :is_integer
    },
    "std::int64" => %{
      guard: :is_integer
    },
    "std::float32" => %{
      guard: :is_float
    },
    "std::float64" => %{
      guard: :is_float
    },
    "std::str" => %{
      guard: :is_binary
    },
    "std::json" => %{
      guard: :is_binary
    },
    "std::uuid" => %{
      guard: :is_binary
    },
    "std::bool" => %{
      guard: :is_boolean
    },
    "std::bigint" => %{
      guard: :is_integer
    },
    "std::bytes" => %{
      guard: :is_bitstring
    },
    "std::number" => %{
      struct: Decimal
    },
    "std::datetime" => %{
      struct: DateTime
    },
    "std::duration" => %{
      struct: EdgeDB.Duration
    },
    "cal::local_datetime" => %{
      struct: NaiveDateTime
    },
    "cal::local_date" => %{
      struct: Date
    },
    "cal::local_time" => %{
      struct: Time
    },
    "cal::relative_duration" => %{
      struct: EdgeDB.RelativeDuration
    },
    "cfg::memory" => %{
      struct: EdgeDB.ConfigMemory
    }
  }

  @literal_to_scalar_mapping Enum.reduce(
                               @scalar_to_literal_mapping,
                               %{},
                               fn
                                 {scalar_type, %{struct: struct}}, acc ->
                                   if acc[struct] do
                                     raise RuntimeError,
                                           "literal type #{inspect(struct)} cannot be mapped to multiple scalar types"
                                   end

                                   Map.put(acc, struct, %{type: scalar_type})

                                 {scalar_type, %{guard: guard}}, acc ->
                                   Map.put(acc, %{guard: guard}, %{type: scalar_type})
                               end
                             )

  def split_name(name) do
    if not String.contains?(name, "::") do
      raise RuntimeError, "invalid FQN: #{inspect(name)}"
    end

    [mod, name] = String.split(name, "::")
    {mod, name}
  end

  def scalar_to_literal_mapping do
    @scalar_to_literal_mapping
  end

  def literal_to_scalar_mapping do
    @literal_to_scalar_mapping
  end
end
