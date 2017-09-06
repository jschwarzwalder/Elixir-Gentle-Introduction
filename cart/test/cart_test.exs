defmodule CartTest do
  use ExUnit.Case

  # example cart
  # cart = %{contents: [:item1, :item2]}
  # cart.contents = [:item1, :item2]

  test "an empty cart is empty" do
    empty_cart = %{}
    assert empty_cart = %{}
  end

  test "adds an item to a cart" do
    empty_cart = %{}
    cart = Cart.handle(empty_cart, {:item_added, :my_item})
    assert cart.contents == [:my_item]
  end
end
