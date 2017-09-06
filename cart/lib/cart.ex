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
  def handle(cart, {:item_added, :item}) do
  cart = %{contents: [item]}
  end
  def handle(cart, {:item_removed, :item}) do
  end
end
