class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  def strfs_up
    updated_at.strftime("%B %d, %Y")
  end
  def sale_message
    sale_price = price
    if sale_price < 20
      message = "<div class=\"alert alert-danger\" role=\"alert\">Discount item!</div>"
    else
      message = "<div class=\"alert alert-danger\" role=\"alert\">On sale!</div>"
    end
    message.html_safe
  end
  def tax
    @before_tax = price
    @tax = @before_tax * 0.09
    @tax
  end
  def total_price
    total_price = @before_tax + @tax
    total_price
  end
  def in_stock?
    if in_stock 
      message2 = "<div class=\"alert alert-success\" role=\"alert\">Currently in stock.</div>"
    else in_stock
      message2 = "<div class=\"alert alert-warning\" role=\"alert\">Currently out of stock.</div>"
    end
    message2.html_safe
  end
end
