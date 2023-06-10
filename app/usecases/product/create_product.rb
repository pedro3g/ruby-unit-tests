require_relative '../../base/usecase'
require_relative '../../../shared/dtos/product/create_product_dto'

class CreateProduct < UseCase
  def execute(params: CreateProductDTO)
    product = Product.new(id: params.id, name: params.name, price: params.price)
  end
end