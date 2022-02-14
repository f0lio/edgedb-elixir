defmodule EdgeDB.QB.Cardinality do
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
end
