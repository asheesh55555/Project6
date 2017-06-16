class CategoriesController < ApplicationController
	
	def new
		
	end


def create
  @category = Category.new( params.require(:category).permit(:name))
 
  @category.save
  redirect_to @category
end
 def show
    @category = Category.find(params[:id])
  end
end
