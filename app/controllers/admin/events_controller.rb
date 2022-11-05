class Admin::EventsController < ApplicationController
  def new
    @event = Event.new
  end
  
  def create
    Event.create(event_parameter)
    redirect_to root_path
  end

  def index
    @events = Event.all
  end

  def edit
    @event = Event.find(params[:id])
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.delete
    
  end

  private

  def event_params
    params.require(:event).permit(:title, :content, :start_time)
  end
end
