class Order < ActiveRecord::Base
  has_many :carted_products
  belongs_to :user
  belongs_to :product
  TAX = 0.09
  def strfs_up
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
  def calc_subtotal_price 
    subtotal = 0
    carted_products.each do |carted_product|
      item_price = carted_product.product.price * carted_product.quantity
      subtotal += item_price
    end
    subtotal
  end
  def calc_tax
    tax = 0
    carted_products.each do |carted_product|
      item_tax = (carted_product.product.price * TAX) * carted_product.quantity
      tax += item_tax
    end
    tax
  end
  def calc_total_price 
    subtotal_price + tax
  end
end
