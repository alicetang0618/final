class CommentsController < ApplicationController

  def create
    c_params = params.require(:comment).permit(:post_id, :rating, :comment)
    @comment = Comment.new(c_params)
    @comment.user_id = session[:user_id]
    @comment.save

    respond_to do |format|
      format.html do
        redirect_to post_url(params[:comment][:post_id])
      end
      format.js do

      end
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    post_id = @comment.post_id
    @comment.delete

    respond_to do |format|
      format.html do
        redirect_to post_url(post_id)
      end
      format.js do
      end
    end
  end

end