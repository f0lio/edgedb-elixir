defmodule EdgeDB.QB.Syntax.Literal do
  import EdgeDB.QB.Runtime

  alias EdgeDB.QB.Caches
  alias EdgeDB.QB.Reflection.Hydrate
  alias EdgeDB.QB.Syntax.Path

  def literal(type, value) do
    Path.to_expression(%{
      __element__: type,
      __cardinality__: :one,
      __kind__: :literal,
      __value__: value
    })
  end

  def get_type(id) do
    case Hydrate.make_type(id, &literal/2) do
      %{__executor__: executor} ->
        executor

      type ->
        type
    end
  end

  def get_type_by_name(name) do
    get_type(Map.fetch!(name_mapping(), name))
  end

  def name_mapping do
    case Caches.get(:name_mapping, :types) do
      nil ->
        types = generated(Types).types()

        types =
          types
          |> Enum.into(%{}, fn type ->
            {type.name, type.id}
          end)
          |> Map.merge(%{"std::number" => "00000000-0000-0000-0000-0000000001ff"})

        Caches.set(:name_mapping, :types, types)

      types ->
        types
    end
  end
end
