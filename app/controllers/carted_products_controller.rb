class CartedProductsController < ApplicationController
  def create
    @product_id = params[:productid]
    quantity = params[:quantity]
    @quantity = quantity.to_i
    @cart = CartedProduct.create(status: "carted", user_id: current_user.id, product_id: @product_id, quantity: @quantity)
    redirect_to '/shopping_cart'
  end
  def index
    @carted_products = current_user.carted_products.where(status: "carted")
  end
end
