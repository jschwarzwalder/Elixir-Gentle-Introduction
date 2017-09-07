defmodule CartTest do
  use ExUnit.Case

  # example cart
  # cart = %{contents: [:item1, :item2]}
  # cart.contents = [:item1, :item2]
  # cart.start =

  test "an empty cart is empty" do
    empty_cart = %{}
    assert empty_cart == %{}
  end

  test "adds an item to a cart" do
    empty_cart = %{}
    cart = Cart.handle(empty_cart, {:item_added, :my_item})
    assert cart.contents == [:my_item]
  end

  test "adds an item to an existing cart" do
    cart = %{contents: [:item1, :item2]}
    cart = Cart.handle(cart, {:item_added, :my_item})
    assert cart.contents == [:my_item, :item1, :item2]
  end

  test "show cart contents" do
    cart = %{contents: [:item1]}
    in_cart = Cart.handle(cart, {:show_contents})
    assert in_cart == [:item1]
  end

  test "remove item" do
    cart = %{contents: [:item1, :item2]}
    cart = Cart.handle(cart, {:item_removed, :item1})
    assert cart.contents == [:item2]
  end

  test "adds duplicate item to an existing cart" do
    cart = %{contents: [:item1]}
    cart = Cart.handle(cart, {:item_added, :item1})
    assert cart.contents == [:item1, :item1]
  end

  test "show total item in the cart" do
      cart = %{contents: [:item1, :item2]}
      total = Cart.handle(cart, {:total})
      assert total == 2
    end

    test "get count of item in cart" do
        cart = %{contents: [:item1, :item2, :item1, :item1]}
        item_count = Cart.handle(cart, {:item_count, :item1})
        assert item_count == 3
      end

end
