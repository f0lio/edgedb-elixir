defmodule EdgeDB.QB.Runtime do
  defmacro generated(mod_path) do
    quote do
      Module.concat(unquote(EdgeDB.QB.namespace()), unquote(mod_path))
    end
  end
end
