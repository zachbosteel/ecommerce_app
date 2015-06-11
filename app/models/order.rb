class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  TAX = 0.09
  def strfs_up
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
  def calc_subtotal_price 
    @temp_subtotal_price = product.price * quantity
  end
  def calc_tax
    @temp_tax = (product.price * TAX) * quantity
  end
  def calc_total_price 
    if subtotal_price && tax
      subtotal_price + tax
    else
      @temp_subtotal_price + @temp_tax 
    end
  end
end
