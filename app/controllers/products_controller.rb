class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to products_path(@product)
    else
      render :new
    end
  end

  def destroy
      @product = Product.find(params[:id])
      @product.destroy
      redirect_to lists_path
  end

  def edit
     @product = Product.find(params[:id])
  end

   def update
     @product = Product.find(params[:id])
     if @product.update(product_params)
       flash[:success] = "Update was successful"
       redirect_to products_path
     else
       flash[:danger] = "Was not able to update"
       render :edit
     end
   end

  private
    def product_params
      params.require(:product).permit(:name, :cost, :origin)
    end
end
