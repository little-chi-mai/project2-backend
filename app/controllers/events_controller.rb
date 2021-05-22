class EventsController < ApplicationController
  def index
    @events = Event.all.order("created_at DESC")
  end

  def create
    @event = Event.create event_params
  end

  def show
    @event = Event.find params[:id]
  end

  def update
    event = Event.find params[:id]
    event.update event_params
  end

  def destroy
    event = Event.find params[:id]
    event.destroy
  end

  private
  def event_params
    params.require(:event).permit(:title, :introduction, :date, :user_id, :restaurant_id)
  end
end
