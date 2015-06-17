class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :count_number_of_carted_products

  private

  def count_number_of_carted_products
    @cart_count = 0
    current_user.carted_products.where(status: "carted").each do |carted_product|
      @cart_count += carted_product.quantity
    end
  end
end
