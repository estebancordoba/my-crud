# frozen_string_literal: true

# Comments Controller
class CommentsController < ApplicationController
  def new; end

  def create
    @post = Post.find_by(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      render json: { success: 'all okay' }
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:email, :body)
  end
end
