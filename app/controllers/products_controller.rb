class ProductsController < ApplicationController
  def new
  	@product = Product.new
  end

  def new_product_category
    @category = Category.find params[:id]
    @product = @category.products.new
  end

  def create_product_category
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_index_path
    end
  end

  def create
  	@category = Category.find(params[:category])
  	@product = @category.products.new(product_params)
  	if @product.save
  		redirect_to products_index_path
  	end
  end

  def index
  	@products = Product.all
  end

  private
  def product_params
  	params.require(:product).permit!
  end
end
