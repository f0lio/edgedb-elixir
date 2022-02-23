defmodule EdgeDB.QB.Caches do
  @caches_names [
    :scoped_expr_cache,
    :scope_roots,
    :wrapped_expr_cache,
    :to_edgeql_cache,
    :type_cache,
    :existing_scopes,
    :name_mapping
  ]

  for cache_name <- @caches_names do
    create_cache_fn_name = String.to_atom("create_#{cache_name}")

    def unquote(create_cache_fn_name)() do
      :ets.new(unquote(cache_name), [:public, :named_table])
    end
  end

  def initialize_caches do
    for cache_name <- @caches_names do
      create_fn = String.to_existing_atom("create_#{cache_name}")
      apply(__MODULE__, create_fn, [])
    end
  end

  def get(cache_name, key) do
    case :ets.lookup(cache_name, key) do
      [{^key, value}] ->
        value

      [{^key}] ->
        key

      [] ->
        nil
    end
  end

  def add(cache_name, value) do
    :ets.insert(cache_name, {value})
  end

  def set(cache_name, key, value) do
    :ets.insert(cache_name, {key, value})
  end

  def contains?(cache_name, key) do
    !is_nil(get(cache_name, key))
  end

  def size(cache_name) do
    :ets.info(cache_name, :size)
  end

  def clear(cache_name) do
    :ets.delete_all_objects(cache_name)
  end
end
