require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "valid product" do
    product = Product.new(
      name: "ODDS Whole Bean Coffee",
      description: "Perfect start to your day",
      price: 25.00,
    )
    assert product.valid?
  end

  test "should not save product without name" do
    product = Product.new
    assert_not product.save
  end
end
