defmodule EdgeDB.QB.Runtime do
  defmacro generated(mod_path) do
    qb_mod = get_qb_mod()

    quote do
      Module.concat(unquote(qb_mod), unquote(mod_path))
    end
  end

  defp get_qb_mod do
    Application.get_env(:edgedb, :qb)
  end
end
