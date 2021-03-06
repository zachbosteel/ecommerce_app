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
    if @carted_products == []
      flash[:warning] = "You have no items in your cart."
      redirect_to "/products"
    end
  end
  def destroy
    @id = params[:id]
    carted_product = CartedProduct.find_by(id: @id)
    carted_product.update(status: "Removed")
    redirect_to "/shopping_cart"
  end
end
