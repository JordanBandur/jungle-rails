module ProductHelper
  def sold_out?(product)
    product.quantity < 1
  end
end
