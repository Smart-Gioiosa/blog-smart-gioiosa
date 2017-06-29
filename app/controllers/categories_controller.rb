class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @posts = @category.posts
    @recent_posts = Post.last(3).reverse
    @categories = Category.all
    @tags = Tag.all
  end
end
