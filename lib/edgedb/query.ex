defmodule EdgeDB.Query do
  alias EdgeDB.Protocol.{
    Codec,
    Enums
  }

  defstruct [
    :statement,
    cardinality: :many,
    io_format: :binary,
    required: false,
    capabilities: [],
    input_codec: nil,
    output_codec: nil,
    cached: false,
    params: []
  ]

  @type t() :: %__MODULE__{
          statement: String.t() | atom(),
          cardinality: Enums.Cardinality.t(),
          io_format: Enums.IOFormat.t(),
          capabilities: Enums.Capability.t(),
          required: boolean(),
          input_codec: Codec.t() | nil,
          output_codec: Codec.t() | nil,
          cached: boolean(),
          params: list(any())
        }
end

defimpl DBConnection.Query, for: EdgeDB.Query do
  alias EdgeDB.Protocol.Codec

  @empty_set %EdgeDB.Set{__items__: []}

  @impl DBConnection.Query
  def decode(%EdgeDB.Query{}, %EdgeDB.Result{set: %EdgeDB.Set{}} = result, _opts) do
    result
  end

  @impl DBConnection.Query
  def decode(
        %EdgeDB.Query{output_codec: out_codec, required: required},
        %EdgeDB.Result{} = result,
        _opts
      ) do
    decode_result(%EdgeDB.Result{result | required: required}, out_codec)
  end

  @impl DBConnection.Query
  def describe(query, _opts) do
    query
  end

  @impl DBConnection.Query
  def encode(%EdgeDB.Query{input_codec: nil}, _params, _opts) do
    raise EdgeDB.Error.interface_error("query hasn't been prepared")
  end

  @impl DBConnection.Query
  def encode(%EdgeDB.Query{input_codec: in_codec}, params, _opts) do
    Codec.encode(in_codec, params)
  end

  @impl DBConnection.Query
  def parse(%EdgeDB.Query{cached: true}, _opts) do
    raise EdgeDB.Error.interface_error("query has been prepared")
  end

  @impl DBConnection.Query
  def parse(query, _opts) do
    query
  end

  defp decode_result(%EdgeDB.Result{cardinality: :no_result} = result, _codec) do
    result
  end

  defp decode_result(%EdgeDB.Result{} = result, codec) do
    encoded_set = result.set
    result = %EdgeDB.Result{result | set: @empty_set}

    encoded_set
    |> Enum.reverse()
    |> Enum.reduce(result, fn data, %EdgeDB.Result{set: set} = result ->
      element = Codec.decode(codec, data)
      %EdgeDB.Result{result | set: add_element_into_set(set, element)}
    end)
    |> then(fn %EdgeDB.Result{set: set} = result ->
      %EdgeDB.Result{result | set: reverse_elements_in_set(set)}
    end)
  end

  defp add_element_into_set(%EdgeDB.Set{__items__: items} = set, element) do
    %EdgeDB.Set{set | __items__: [element | items]}
  end

  defp reverse_elements_in_set(%EdgeDB.Set{__items__: items} = set) do
    %EdgeDB.Set{set | __items__: Enum.reverse(items)}
  end
end
