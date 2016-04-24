class ProductsController < ApplicationController
	
	http_basic_authenticate_with name: "abazeer", password: "P2ssword"

  	def index
    	@products = Product.all
		@categories = Category.all
  	end

  	def show
    	@product = Product.find(params[:id])
		@categories = Category.all
  	end
	
	def new
		@product = Product.new
	end

	def edit
	  @product = Product.find(params[:id])
	end

	def create
	  @product = Product.new(product_params)
	 
	  if @product.save
	  	redirect_to @product
	  else 
		render 'new'
	  end
	end

	def update
	  @product = Product.find(params[:id])
	 
	  if @product.update(product_params)
		redirect_to @product
	  else
		render 'edit'
	  end
	end

	def destroy
	  @product = Product.find(params[:id])
	  @product.destroy
	 
	  redirect_to products_path
	end

	private
	  def product_params
		params.require(:product).permit(:name_en, :desc_en, :price_en, :name_ar, :desc_ar, :price_ar, :category0_id, :category1_id, :category2_id, :category3_id, :category4_id, :isactive)
	  end
end
