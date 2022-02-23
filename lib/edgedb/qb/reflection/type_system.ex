defmodule EdgeDB.QB.Reflection.TypeSystem do
  def to_set(root, card) do
    %{
      __element__: root,
      __cardinality__: card
    }
  end
end
