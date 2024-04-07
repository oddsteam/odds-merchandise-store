require "test_helper"

class ProductTest < ActiveSupport::TestCase
  def setup
    @product = Product.new(
      name: "ODDS Whole Bean Coffee",
      description: "Perfect start to your day",
      price: 25.00,
    )
  end

  test "valid product" do
    assert @product.valid?
  end

  test "should not save product without name" do
    @product.name = nil
    assert_not @product.valid?
  end
end
