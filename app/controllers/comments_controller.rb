class CommentsController < ApplicationController
	def new
	
end
def create

    @product = Product.find(params[:product_id])
    @comment = @product.comments.new( comment_param)
    @comment.user_id=current_user.id
   
    @comment.save

    redirect_to product_path(@product)
  
  end
private
 def comment_param
 	params.require(:comment).permit(:title, :comment)
 end
  
end
