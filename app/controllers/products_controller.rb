class ProductsController < ApplicationController
  def index
    @title = "Purple Hippo"
    @product_library = Product.all 
    if params[:sort] 
      if params[:sort] and params[:order]
        @product_library = @product_library.order(params[:sort] => params[:order])
      else
        @product_library = @product_library.order(params[:sort])
      end
    end
    if params[:discount]
      @product_library = @product_library.where('price <= ?', 25)
    end
    if params[:search]
      @product_library = @product_library.where('name LIKE ? OR description LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")
    end
  end
  def show
    @id = params[:id]
    @product = Product.find_by(id: @id)
    @images = @product.images
    @title = @product.name
  end
  def new
    @title = "Add a New Product"
  end
  def create
    @product = Product.create(name: params[:name], price: params[:price], description: params[:description])
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
    @product.update(name: params[:name], price: params[:price], description: params[:description])
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
  def new_image
    @title = "Add a New Product Image"
    @id = params[:id]
    @product = Product.find_by(id: @id)
  end
  def create_image
    @id = params[:id]
    @product = Image.create(url: params[:image_url], product_id: @id)
    flash[:success] = "Product image added."
    redirect_to "/products/#{@id}"
  end
end
