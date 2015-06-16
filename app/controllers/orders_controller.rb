class OrdersController < ApplicationController
  def create
    @order = Order.create(user_id: current_user.id)
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    @carted_products.each do |carted_product|
      carted_product.update(status: "purchased", order_id: @order.id)
    end
    @order.update(subtotal_price: @order.calc_subtotal_price, tax: @order.calc_tax)
    @order.update(total_price: @order.calc_total_price)

    redirect_to "/orders/#{@order.id}"
  end
  def show
    @order = Order.find_by(id: params[:id])
  end
end
