require "test_helper"

class ProductTest < ActiveSupport::TestCase
  def setup
    @product = products(:valid)
  end

  test "valid product" do
    assert @product.valid?
  end

  test "should not save product without name" do
    @product.name = nil
    assert_not @product.valid?
  end
end
