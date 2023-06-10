require 'test/unit'
require_relative '../create_product'
require_relative '../../../../shared/dtos/product/create_product_dto'

class CreateProductTest < Test::Unit::TestCase
  def test_should_not_create_product_with_invalid_price
    dto = CreateProductDTO.new(id: 1, name: 'Product 1', price: -10.0)

    usecase = CreateProduct.new
    assert_raise(ArgumentError) { usecase.execute(params: dto) }
  end

  def test_should_create_product
    dto = CreateProductDTO.new(id: 1, name: 'Product 1', price: 10.0)

    usecase = CreateProduct.new
    usecase.execute(params: dto)
  end
end