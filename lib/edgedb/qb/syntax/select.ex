defmodule EdgeDB.QB.Syntax.Select do
  import EdgeDB.QB.Runtime

  alias EdgeDB.QB.Caches
  alias EdgeDB.QB.Utils
  alias EdgeDB.QB.Reflection.Hydrate

  alias EdgeDB.QB.Syntax.{
    Path,
    Literal
  }

  defguard is_literal(term)
           when is_bitstring(term) or
                  is_struct(term, Date) or
                  is_struct(term, Time) or
                  is_struct(term, DateTime) or
                  is_struct(term, EdgeDB.Duration) or
                  is_struct(term, EdgeDB.RelativeDuration) or
                  is_struct(term, EdgeDB.ConfigMemory)

  def select(term) when is_literal(term) do
    literal_expr = generated(CastMapping).literal_to_scalar_type(term)

    %{
      __kind__: :select,
      __element__: literal_expr.__element__,
      __cardinality__: literal_expr.__cardinality__,
      __expr__: literal_expr,
      __modifiers__: %{}
    }
    |> to_select()
    |> Path.to_expression()
  end

  def select(expr, shape \\ []) do
    {expr, shape} =
      if expr[:__element__] do
        {expr, shape}
      else
        {free_object(), expr}
      end

    if length(shape) == 0 do
      if expr.__element__.__kind__ == :object do
        %{
          __kind__: :select,
          __element__: %{
            __kind__: :object,
            __name__: "#{expr.__element__.__name__}",
            __pointers__: expr.__element__.__pointers__,
            __shape__: %{id: true}
          },
          __cardinality__: expr.__cardinality__,
          __expr__: expr,
          __modifiers__: %{}
        }
        |> to_select()
        |> Path.to_expression()
      else
        %{
          __kind__: :select,
          __element__: expr.__element__,
          __cardinality__: expr.__cardinality__,
          __expr__: expr,
          __modifiers__: %{}
        }
        |> to_select()
        |> Path.to_expression()
      end
    else
      clean_scoped_exprs? = Caches.size(:existing_scopes) == 0

      {mods, shape, scope} = resolve_shape(shape, expr)

      if clean_scoped_exprs? do
        Caches.clear(:existing_scopes)
      end

      {mods, cardinality} = handle_modifiers(mods, expr)

      element =
        if expr != scope do
          %{
            __kind__: :object,
            __name__: expr.__element__.__name__,
            __pointers__: expr.__element__.__pointers__,
            __shape__: shape
          }
        else
          expr.__element__
        end

      scope =
        if expr != scope and expr.__element__.__name__ != "std::FreeObject" do
          scope
        else
          nil
        end

      %{
        __kind__: :select,
        __element__: element,
        __cardinality__: cardinality,
        __expr__: expr,
        __modifiers__: mods,
        __scope__: scope
      }
      |> to_select()
      |> Path.to_expression()
    end
  end

  def to_select(expr) do
    expr
  end

  defp resolve_shape(shape_getter, expr) do
    scope =
      if expr.__element__.__kind__ == :object do
        Path.get_scoped_expr(expr, :existing_scopes)
      else
        expr
      end

    select_shape =
      if is_function(shape_getter) do
        shape_getter.(scope)
      else
        shape_getter
      end

    {shape, modifiers} =
      Enum.reduce(select_shape, {%{}, %{}}, fn {key, value}, {shape, modifiers} ->
        if key in [:filter, :order_by, :offset, :limit] do
          {shape, Map.put(modifiers, key, value)}
        else
          if scope == expr do
            raise RuntimeError,
                  "invalid select shape key #{inspect(key)} on scalar expression, " <>
                    "only modifiers are allowed (filter, order_by, offset and limit)"
          end

          {Map.put(shape, key, resolve_shape_element(key, value, scope)), modifiers}
        end
      end)

    {shape, modifiers, scope}
  end

  defp resolve_shape_element(key, value, scope) do
    cond do
      (is_function(value) and scope.__element__.__pointers__[key][:__kind__] == :link) or
          (is_map(value) and value.__kind__ == nil) ->
        child_expr = scope[key]
        {mods, child_shape, child_scope} = resolve_shape(value, child_expr)

        mods = handle_modifiers(mods, child_expr)

        %{
          __kind__: :select,
          __element__: %{
            __kind__: :object,
            __name__: child_expr.__element__.__name__,
            __pointers__: child_expr.__element__.__pointers__,
            __shape__: child_shape
          },
          __cardinality__: scope.__elements__.__pointers__[key].cardinality,
          __expr__: child_expr,
          __modifiers__: mods,
          __scope__: child_scope
        }

      value.__kind__ == :poly_shape_element ->
        poly_scope = scope.is.(value.__poly_type__)

        %{
          __kind__: :poly_shape_element,
          __poly_type__: poly_scope,
          __shape_element__:
            resolve_shape_element(
              key,
              value.__shape_element__,
              poly_scope
            )
        }

      is_boolean(value) and String.starts_with?(key, "@") ->
        link_prop = scope[key]

        if !link_prop do
          message =
            if parent = scope.__parent__ do
              "link property #{inspect(key)} does not exist on link #{parent.link_name}"
            else
              "cannot select link property #{inspect(key)} on an object (#{scope.__element__.__name__})"
            end

          raise RuntimeError, message
        end

        if value do
          link_prop
        else
          false
        end

      true ->
        value
    end
  end

  defp handle_modifiers(modifiers, root_expr) do
    card = root_expr.__cardinality__

    card =
      if modifiers[:filter] and root_expr.__element__.__kind__ == :object do
        compute_filter_cadinality(modifiers.filter, card, root_expr)
      else
        card
      end

    modifiers =
      if modifiers[:order_by] do
        order_exprs = List.wrap(modifiers.order_by)

        Map.put(
          modifiers,
          :order_by,
          Enum.map(order_exprs, fn expr ->
            if expr[:__element__] do
              expr
            else
              %{expression: expr}
            end
          end)
        )
      end

    {modifiers, card} =
      if modifiers[:offset] do
        modifiers =
          if is_number(modifiers.offset) do
            Literal.get_type_by_name("std::number").(modifiers.offset)
          else
            modifiers.offset
          end

        card = Utils.Cardinality.override_lower_bound(card, :zero)
        {modifiers, card}
      else
        {modifiers, card}
      end

    {modifiers, card} =
      if modifiers[:limit] do
        expr = modifiers.limit

        expr =
          cond do
            is_number(expr) ->
              Literal.get_type_by_name("std::number").(expr)

            expr.__kind__ == :set ->
              Enum.at(expr.__exprs__, 0)

            true ->
              expr
          end

        modifiers = Map.put(modifiers, :limit, expr)
        card = Utils.Cardinality.override_lower_bound(card, :zero)
        {modifiers, card}
      end

    {modifiers, card}
  end

  def compute_filter_cadinality(filter, card, base) do
    base_is_object_expr? = base[:__element__][:__kind__] == :object
    filter_expr_is_eq? = filter.__kind__ == :operator and filter.__name__ == :=
    arg0 = Enum.at(filter[:__args__] || [], 0)
    arg1 = Enum.at(filter[:__args__] || [], 1)
    args_exits? = not is_nil(arg0) and not is_nil(arg1) and not is_nil(arg1.__cardinality__)
    arg0_unique? = arg0[:__exclusive__] == true

    if base_is_object_expr? and filter_expr_is_eq? and args_exits? and arg0_unique? do
      new_card =
        cond do
          arg1.__cardinality__ == :one or arg1.__cardinality__ == :at_most_one ->
            :at_most_one

          arg1.__cardinality__ == :empty ->
            :empty
            true
            card
        end

      cond do
        arg0.__kind__ == :path_leaf ->
          arg0_parent_matches_base? =
            arg0.__parent__.type.__element__.__name__ == base.__element__.__name__

          if arg0_parent_matches_base? do
            new_card
          else
            card
          end

        arg0.__kind__ == :path_node ->
          if parent = arg0.__parent__ do
            arg0_parent_matches_base? =
              parent.type.__element__.__name__ == base.__element__.__name__

            if arg0_parent_matches_base? do
              new_card
            else
              card
            end
          else
            arg0_matches_base? = arg0.__element__.__name__ == base.__element__.__name__

            if arg0_matches_base? do
              new_card
            else
              card
            end
          end

        true ->
          card
      end
    else
      card
    end
  end

  defp free_object do
    %{
      __kind__: :path_node,
      __element__: Hydrate.make_type_from_name("std::FreeObject", &Literal.literal/2),
      __cardinality__: :one,
      __parent__: nil,
      __exclusive__: true,
      __scope_root__: nil
    }
  end
end
