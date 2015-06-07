class ProductsController < ApplicationController
  def index
    @title = "Purple Hippo"
    @product_library = Product.all
    if params[:sort]
      @product_library = Product.order(params[:sort])
    end  
    if params[:sort] and params[:order]
      @product_library = Product.order(price: :desc)
    end
    if params[:discount]
      @product_library = Product.where('price <= ?', 25)
    end
    if params[:search]
      @product_library = Product.where('name LIKE ?', "%#{params[:search]}%")
    end
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
    @product = Product.create(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    flash[:success] = "Product created."
    redirect_to "/products/#{@product.id}"
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
    flash[:success] = "Product updated."
    redirect_to "/products/#{@id}"
  end
  def destroy
    id = params[:id]
    product = Product.find_by(id: id)
    product.destroy
    flash[:warning] = "Product deleted."
    redirect_to "/products/"
  end
end
