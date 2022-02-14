defmodule EdgeDB.QB.Syntax.Path do
  import EdgeDB.QB.Runtime

  alias EdgeDB.QB.Syntax.Collections

  alias EdgeDB.QB.{
    Cardinality,
    Proxy,
    Caches
  }

  @pointers_key :"@pointers"
  @path_cache_key :"@path_cache"

  def to_expression(expr) do
    expr
    |> Collections.maybe_to_tuple_path()
    |> Collections.maybe_to_array_like_index()
    |> maybe_to_json_destructure()
    |> to_path()
    |> Map.put(:is, create_is_fn())
    |> Map.put(:assert_single, create_assert_single_fn())
  end

  def to_path(%{__element__: %{__kind__: :object}} = root) do
    pointers = root.__element__.__pointers__

    pointers =
      with %{type: type, link_name: link_name} <- root.__parent__,
           parent_pointer when not is_nil(parent_pointer) <-
             type.__element__.__pointers__[link_name],
           true <- parent_pointer.__kind__ == :link do
        Map.merge(pointers, parent_pointer.properties)
      else
        _other ->
          pointers
      end

    pointers =
      Enum.reduce(root.__element__.__shape__, pointers, fn {key, value}, pointers ->
        with %{__element__: element} <- value,
             nil <- Map.get(pointers, key) do
          Map.put(pointers, key, %{
            __kind__: :property,
            target: element,
            cardinality: value.__cardinality__,
            exclusive: false,
            writable: false,
            has_default: false
          })
        else
          _other ->
            pointers
        end
      end)

    root =
      root
      |> Map.put(@pointers_key, pointers)
      |> Map.put(@path_cache_key, %{})

    Proxy.new!(root, &path_handler/2)
  end

  def to_path(expr) do
    expr
  end

  def maybe_to_json_destructure(
        %{__element__: %{__kind__: :scalar, __name__: "std::json"}} = expr
      ) do
    expr
    |> Proxy.new!(&json_destructure_handler/2)
    |> Map.put(:destructure, &json_destructure/2)
  end

  def maybe_to_json_destructure(expr) do
    expr
  end

  def get_scoped_expr(expr, existing_scopes \\ nil) do
  end

  defp create_is_fn do
    fn expr, is_expr ->
      to_expression(%{
        __kind__: :type_intersection,
        __cardinality__: expr.__cardinality__,
        __element__:
          Map.merge(
            is_expr.__element__,
            %{__shape__: %{id: true}}
          ),
        __expr__: expr
      })
    end
  end

  defp create_assert_single_fn do
    fn expr ->
      to_expression(%{
        __kind__: :function,
        __element__: expr.__element__,
        __cardinality__: Cardinality.override_upper_bound(expr.__cardinality__, :one),
        __name__: "std::assert_single",
        __args__: [expr],
        __namedargs__: %{}
      })
    end
  end

  defp json_destructure_handler(proxy, field) when is_binary(field) and field != "run" do
    target = Proxy.destruct!(proxy)

    case Access.fetch(target, field) do
      {:ok, field} ->
        parsed_field =
          case Integer.parse(field) do
            {parsed_field, ""} ->
              parsed_field

            :error ->
              field
          end

        {:ok, json_destructure(proxy, parsed_field)}

      :error ->
        Access.fetch(target, field)
    end
  end

  defp json_destructure(expr, path) do
    path_type_set = generated(CastMapping).literal_to_type_set(path)

    to_expression(%{
      __kind__: :operator,
      __element__: expr.__element__,
      __cardinality__:
        Cardinality.multiply_cardinalities(expr.__cardinality__, path_type_set.__cardinality__),
      __name__: "[]",
      __opkind__: :infix,
      __args__: [expr, path_type_set]
    })
  end

  defp path_handler(proxy, field) do
    target = Proxy.destruct!(proxy)
    pointer = target[@pointers_key][field]

    if pointer do
      if path = target[@path_cache_key][field] do
        path
      else
        root = %{
          __element__: pointer.target,
          __cardinality__:
            Cardinality.multiply_cardinalities(target.__cardinality__, pointer.cardinality)
        }

        parent = %{
          link_name: field,
          type: proxy
        }

        exclusive =
          if pointer.exclusive do
            pointer.exclusive
          else
            false
          end

        scope_root =
          if target.__scope_root__ do
            Caches.get(Caches.scope_roots(), proxy)
          else
            target.__scope_root__
          end

        path =
          if pointer.__kind__ == :property do
            path_leaf(root, parent, exclusive, scope_root)
          else
            path_node(root, parent, exclusive, scope_root)
          end

        put_in(target, [@path_cache_key, field], path)
      end
    else
      Access.get(target, field)
    end
  end

  defp path_leaf(root, parent, exclusive, scope_root) do
    to_expression(%{
      __kind__: :path_leaf,
      __element__: root.__element__,
      __cardinality__: root.__cardinality__,
      __parent__: parent,
      __exclusive__: exclusive,
      __scope_root__: scope_root
    })
  end

  defp path_node(root, parent, exclusive, scope_root) do
    to_expression(%{
      __kind__: :path_node,
      __element__: root.__element__,
      __cardinality__: root.__cardinality__,
      __parent__: parent,
      __exclusive__: exclusive,
      __scope_root__: scope_root
    })
  end
end
