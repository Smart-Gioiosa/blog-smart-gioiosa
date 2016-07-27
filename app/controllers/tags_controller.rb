class TagsController < ApplicationController
  def show
    @tag =  Tag.friendly.find(params[:id])
    @posts= @tag.posts.order('created_at DESC')
  end
end
