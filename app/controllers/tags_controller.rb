class TagsController < ApplicationController
  def show
    @tag =  Tag.friendly.find(params[:id])
    @posts= @tag.posts.pubblished.order('created_at DESC')
    @recent_posts = Post.pubblished.last(3).reverse
    @categories = Category.all
  end
end
