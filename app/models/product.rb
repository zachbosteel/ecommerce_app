class Product < ActiveRecord::Base
  def strfs_up
    updated_at.strftime("%B %d, %Y")
  end
  def sale_message
    sale_price = price
    sale_price.slice! "$"
    if sale_price.to_i < 20
      message = "<div class=\"alert alert-danger\" role=\"alert\">Discount item!</div>"
    else
      message = "<div class=\"alert alert-danger\" role=\"alert\">On sale!</div>"
    end
    message.html_safe
  end
  def tax
    @before_tax = price
    @before_tax.slice! "$"
    if @before_tax.include? ","
      @before_tax.slice! ","
    end
    @tax = @before_tax.to_f * 0.09
    @tax
  end
  def total_price
    total_price = @before_tax.to_f + @tax
    total_price
  end
end
