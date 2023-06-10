require 'test/unit'
require_relative '../product'

class ProductTest < Test::Unit::TestCase
  def test_should_not_create_product_without_name
    assert_raise ArgumentError do
      Product.new
    end
  end

  def test_should_not_create_product_without_price
    assert_raise ArgumentError do
      Product.new(id: 1, name: 'Produto 1')
    end
  end

  def test_should_not_create_product_without_id
    assert_raise ArgumentError do
      Product.new(name: 'Produto 1', price: 10.0)
    end
  end

  def test_should_be_a_product
    product = Product.new(id: 1, name: 'Produto 1', price: 10.0)

    assert_equal 1, product.id
    assert_equal 'Produto 1', product.name
    assert_equal 10.0, product.price
  end
end
