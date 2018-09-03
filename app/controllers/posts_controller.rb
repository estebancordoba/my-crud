# frozen_string_literal: true

# Posts Controller
class PostsController < ApplicationController
  def index
    @posts = Post.where(user_id: params[:user_id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit; end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: { success: 'all okay' }
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end
end
