class Merchant

  attr_reader :name, :products

  def initialize(name, products = [])
    @name = name
    @products = []
  end

  # def add_products(product)
  #   @products.push(product)
  # end

  #Use an enumberable .map as it returns an array
  def give_product_name
    return product.map do |product|
      product.name
    end
  end
end

