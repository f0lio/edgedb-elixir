defmodule EdgeDB.Protocol.TypeDescriptors.NamedTupleTypeDescriptor do
  @moduledoc false

  use EdgeDB.Protocol.TypeDescriptor

  alias EdgeDB.Protocol.{
    Codecs,
    Types
  }

  deftypedescriptor(type: 5)

  @impl EdgeDB.Protocol.TypeDescriptor
  def parse_description(codecs, type_id, <<element_count::uint16, rest::binary>>) do
    {elements, rest} = Types.NamedTupleDescriptorElement.decode(element_count, rest)

    codecs =
      Enum.map(elements, fn %Types.NamedTupleDescriptorElement{type_pos: type_pos} ->
        codec_by_index(codecs, type_pos)
      end)

    {Codecs.Builtin.NamedTuple.new(type_id, elements, codecs), rest}
  end

  @impl EdgeDB.Protocol.TypeDescriptor
  def consume_description(_codecs_storage, _id, <<element_count::uint16, rest::binary>>) do
    {_elements, rest} = Types.NamedTupleDescriptorElement.decode(element_count, rest)

    rest
  end
end
