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
    # Map.update(:bananas, 1, fn(quantity) -> quantity +1 end )

  end
  def handle(cart, {:item_removed, item}) do
    contents = Map.get(cart, :contents)
    cart = %{contents: contents |> List.delete(item) }
    #List = [1, 2, 3]
    #List.delete(2)
    #List.delete_at(1)

    # Map.update(:bananas, 1, fn(quantity) -> quantity +1 end )
  end
  def handle(cart, {:show_contents}) do
    for c <- cart.contents, do: c
  end
  def handle(cart, {:total}) do
   total = Enum.count(cart.contents)
   # total = Map.get(cart, :contents) |> Enum.count
 end
 def handle(cart, {:item_count, item}) do
   count = Enum.filter(Map.get(cart, :contents), item)
  end
end
