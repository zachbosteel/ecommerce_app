class ProductsController < ApplicationController
  def index
    @title = "Purple Hippo"
    @product_library = Product.all
  end
  def show
    @id = params[:id]
    @product = Product.find_by(id: @id)
    @title = @product.name
  end
  def new
  end
  def create
  end
end
