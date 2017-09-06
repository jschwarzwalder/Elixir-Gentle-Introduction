defmodule Cart do
  @moduledoc """
  Documentation for Cart.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cart.hello
      :world

  """
  def handle(cart, {:item_added, item}) do
    cart = %{contents: [item | Map.get(cart, :contents, [])]}
  end
  def handle(cart, {:item_removed, item}) do
  end
  def handle(cart, {:show_contents}) do
    for c <- cart.contents, do: c
  end
end
