defmodule EdgeDB.QB.Generation.Module do
  alias EdgeDB.QB.Generation

  defstruct [
    :name,
    :code
  ]

  def save(%__MODULE__{name: name, code: code}) do
    filename = Generation.module_path(name)

    content =
      code
      |> prepare(name)
      |> Macro.to_string()
      |> tap(fn code ->
        IO.puts(code)
      end)
      |> Code.format_string!()

    filename
    |> Path.dirname()
    |> File.mkdir_p!()

    File.write!(filename, content)
  end

  defp prepare(code, module_name) do
    quote do
      defmodule unquote(module_name) do
        unquote(code)
      end
    end
  end
end
