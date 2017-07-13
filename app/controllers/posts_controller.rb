class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
    @recent_posts = Post.last(3).reverse
    @categories = Category.all
  end

  def show
    @post = Post.friendly.find(params[:id])
    @recent_posts = Post.last(3).reverse
    @categories = Category.all
  end
end
