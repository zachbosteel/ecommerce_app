class OrdersController < ApplicationController
  def create
    @product_id = params[:productid]
    quantity = params[:quantity]
    @quantity = quantity.to_i
    @order = Order.create(user_id: current_user.id, product_id: @product_id, quantity: @quantity)
    @order.update(subtotal_price: @order.calc_subtotal_price, tax: @order.calc_tax, total_price: @order.calc_total_price)
    redirect_to "/orders/#{@order.id}"
  end
  def show
    @order = Order.find_by(id: params[:id])
  end
end
