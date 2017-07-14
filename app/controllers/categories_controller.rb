class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @posts = @category.posts.pubblished
    @recent_posts = Post.pubblished.last(3).reverse
    @categories = Category.all
    @tags = Tag.all
  end
end
