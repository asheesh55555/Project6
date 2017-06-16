class ProductsController < ApplicationController
  before_action :authenticate_user!,  only: [:show,:new,:create] 

	def new
		
	end


def create
  @product = Product.new( params.require(:product).permit(:name, :description, :location, :category_id, :images, :user_id))
 
  @product.save
  redirect_to @product
end
 def show
    @product = Product.find(params[:id])
  end

  def index
  	if current_user
  @products =Product.where(user_id: current_user.id)
else
   @products = Product.all
end

  	
  end
end
