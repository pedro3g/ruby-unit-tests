class Product
  attr_reader :id, :name, :price

  def initialize(id: nil, name: nil, price: nil)
    raise ArgumentError if name.nil?
    raise ArgumentError if price.nil?
    raise ArgumentError if price.negative?

    @id = id
    @name = name
    @price = price
  end
end
