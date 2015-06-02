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
    @title = "Add a New Product"
  end
  def create
    Product.create(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    redirect_to '/products'
  end
  def edit
    @id = params[:id]
    @product = Product.find_by(id: @id)
    @title = "Edit #{@product.name}"
  end
  def update
    @id = params[:id]
    @product = Product.find_by(id: @id)
    @product.update(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    redirect_to "/products/#{@id}"
  end
  def destroy
    id = params[:id]
    product = Product.find_by(id: id)
    product.delete
    redirect_to "/products/"
  end
end
