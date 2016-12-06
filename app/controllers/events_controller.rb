class EventsController < ApplicationController
  def index
    @events = Event.all.order('event_time ASC')
  end
  
  def show
   @event = Event.friendly.find(params[:id]) 
  end  

end
