defmodule EdgeDB.QB.Utils.Cardinality do
  @cardinalities [
    :at_most_one,
    :one,
    :many,
    :at_least_one,
    :empty
  ]

  def multiply_cardinalities(:empty, _cardinality2) do
    :empty
  end

  def multiply_cardinalities(:one, cardinality2) do
    cardinality2
  end

  def multiply_cardinalities(:at_most_one, :one) do
    :at_most_one
  end

  def multiply_cardinalities(:at_most_one, :at_least_one) do
    :many
  end

  def multiply_cardinalities(:at_most_one, cardinality2) do
    cardinality2
  end

  def multiply_cardinalities(:many, :empty) do
    :empty
  end

  def multiply_cardinalities(:many, _cardinality) do
    :many
  end

  def multiply_cardinalities(:at_least_one, :at_most_one) do
    :many
  end

  def multiply_cardinalities(:at_least_one, :one) do
    :at_least_one
  end

  def multiply_cardinalities(:at_least_one, cardinality2) do
    cardinality2
  end

  def multiply_cardinalities_variadic([]) do
    raise RuntimeError, "empty list not allowed"
  end

  def multiply_cardinalities_variadic([cardinality]) do
    cardinality
  end

  def multiply_cardinalities_variadic(cardinalities) do
    Enum.reduce(cardinalities, :one, fn cardinality, result ->
      multiply_cardinalities(result, cardinality)
    end)
  end

  def override_upper_bound(cardinality, cardinality_to_override)
      when cardinality in @cardinalities and cardinality_to_override in [:one, :many] do
    case cardinality_to_override do
      :one when cardinality == :one or cardinality == :at_least_one ->
        :one

      :one ->
        :at_most_one

      :many when cardinality == :one or cardinality == :at_least_one ->
        :at_least_one

      :many ->
        :many
    end
  end

  def override_lower_bound(cardinality, cardinality_to_override)
      when cardinality in @cardinalities and cardinality_to_override in [:one, :zero] do
    case cardinality_to_override do
      :one when cardinality == :many or cardinality == :at_least_one ->
        :at_least_one

      :one ->
        :one

      :zero when cardinality == :many or cardinality == :at_least_one ->
        :many

      :zero when cardinality == :empty ->
        :empty

      :zero ->
        :at_most_one
    end
  end

  def merge_cardinalities(:empty, b) do
    b
  end

  def merge_cardinalities(a, :empty) do
    a
  end

  def merge_cardinalities(:at_least_one, _b) do
    :at_least_one
  end

  def merge_cardinalities(_a, :at_least_one) do
  end

  def merge_cardinalities(:one, _b) do
    :at_least_one
  end

  def merge_cardinalities(_a, :one) do
    :at_least_one
  end

  def merge_cardinalities(_a, _b) do
    :many
  end

  def merge_cardinalities_variadic([]) do
    raise RuntimeError, "empty tuple not allowed"
  end

  def merge_cardinalities_variadic([card]) do
    card
  end

  def merge_cardinalities_variadic([card1, card2]) do
    merge_cardinalities(card1, card2)
  end

  def merge_cardinalities_variadic([card1, card2 | cards]) do
    card = merge_cardinalities(card1, card2)
    merge_cardinalities_variadic([card | cards])
  end

  def convert_cardinality("AtMostOne") do
    :at_most_one
  end

  def convert_cardinality("One") do
    :one
  end

  def convert_cardinality("Many") do
    :many
  end

  def convert_cardinality("AtLeastOne") do
    :at_least_one
  end

  def convert_cardinality("Empty") do
    :empty
  end

  def or_cardinalities(card1, card2) when card1 == card2 do
    card1
  end

  def or_cardinalities(:many, _card) do
    :many
  end

  def or_cardinalities(:at_least_one, :one) do
    :at_least_one
  end

  def or_cardinalities(:at_least_one, _card) do
    :many
  end

  def or_cardinalities(:at_most_one, :many) do
    :many
  end

  def or_cardinalities(:at_most_one, :at_least_one) do
    :many
  end

  def or_cardinalities(:at_most_one, _card) do
    :at_most_one
  end

  def or_cardinalities(:empty, :at_most_one) do
    :at_most_one
  end

  def or_cardinalities(:empty, :one) do
    :at_most_one
  end

  def or_cardinalities(:empty, _card) do
    :many
  end

  def or_cardinalities(_card, :empty) do
    :at_most_one
  end

  def or_cardinalities(_card1, card2) do
    card2
  end
end
