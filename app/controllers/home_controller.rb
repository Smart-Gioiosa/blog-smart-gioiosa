class HomeController < ApplicationController
  def index
    @posts = Post.last(3).reverse
    #@events = Event.last(3).order('start_time DESC')
  end
end
