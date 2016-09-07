class CategoriesController < ApplicationController
  def new
  	@category = Category.new
  end

  def create
  	@category = Category.new(category_params)
  	if @category.save
  		redirect_to categories_index_path
  	end
  end

  def index 
  	@categories = Category.all
  end

  def show
    @category = Category.find params[:id]
    @products = @category.products
  end

 private

 def category_params
 	params.require(:category).permit(:name)
 end
end
