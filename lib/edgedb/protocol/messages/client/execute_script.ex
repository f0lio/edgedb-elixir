defmodule EdgeDB.Protocol.Messages.Client.ExecuteScript do
  @moduledoc false

  use EdgeDB.Protocol.Message

  alias EdgeDB.Protocol.{
    Datatypes,
    Enums,
    Types
  }

  defmessage(
    client: true,
    mtype: 0x51,
    fields: [
      headers: map(),
      script: Datatypes.String.t()
    ],
    known_headers: %{
      allow_capabilities: [
        code: 0xFF04,
        encoder: Enums.Capabilities
      ]
    }
  )

  @impl EdgeDB.Protocol.Message
  def encode_message(%__MODULE__{headers: headers, script: script}) do
    headers = handle_headers(headers)

    [
      Types.Header.encode(headers),
      Datatypes.String.encode(script)
    ]
  end
end
