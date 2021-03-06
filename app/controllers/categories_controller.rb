class CategoriesController < ApplicationController

	http_basic_authenticate_with name: "abazeer", password: "P2ssword"

  	def index
    	@categories = Category.all
  	end

  	def show
    	@category = Category.find(params[:id])
  	end
	
	def new
		@category = Category.new
	end

	def edit
	  @category = Category.find(params[:id])
	end

	def create
	  @category = Category.new(category_params)
	 
	  if @category.save
	  	redirect_to @category
	  else 
		render 'new'
	  end
	end

	def update
	  @category = Category.find(params[:id])
	 
	  if @category.update(category_params)
		redirect_to @category
	  else
		render 'edit'
	  end
	end

	def destroy
	  @category = Category.find(params[:id])
	  @category.destroy
	 
	  redirect_to categories_path
	end

	private
	  def category_params
		params.require(:category).permit(:name_en, :name_ar, :thumb_url, :pano_url, :isactive)
	  end
end
