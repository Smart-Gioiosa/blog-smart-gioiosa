class Admin::EventsController < Admin::BaseController
  before_action :set_event, only:[:show, :edit, :destroy, :update]
  
  def index
    @events = Event.all
  end
  
  def show
  end

  def edit
    render :show_form
  end

  def new
    @event = Event.new
    render :show_form
  end

  def create
    @event = Event.new(event_params)
    respond_to do |format|
      if @event.save
        format.html {redirect_to admin_events_path}
        format.js {render :hide_form}
        flash[:success] = "Event has been created"
      else
        format.js {render :show_form}
      end
    end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        flash[:success] = "event updated"
        format.html {redirect_to admin_events_path}
        format.js {render :hide_form}
      else
        format.js {render :show_form}
      end
    end
  end

  def destroy
    @event.destroy
    flash[:success] = "Event deleted"
    redirect_to admin_events_path
  end



  private 
  def set_event
    @event = Event.friendly.find(params[:id])
  end
  
  def event_params
    params.require(:event).permit(:title, :body, :location, :event_time, :external_link, :event_image, :remove_event_image, :facebook_event)
  end

end
