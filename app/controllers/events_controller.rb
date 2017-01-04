class EventsController < ApplicationController
  def index
    @events = Event.all.order('start_time DESC')
  end
  
  def show
   @event = Event.friendly.find(params[:id]) 
  end  

end
