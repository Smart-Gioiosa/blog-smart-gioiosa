class PostsController < ApplicationController
  def index
    @posts = Post.pubblished.order('created_at DESC')
    @recent_posts = Post.pubblished.last(3).reverse
    @categories = Category.all
  end

  def show
    @post = Post.pubblished.friendly.find(params[:id])
    @recent_posts = Post.pubblished.last(3).reverse
    @categories = Category.all
  end
end
