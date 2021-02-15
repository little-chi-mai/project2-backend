class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def create
    @event = Event.create event_params
  end

  private
  def event_params
    params.require(:event).permit(:title, :introduction, :date, :user, :restaurant_id)
  end
end
