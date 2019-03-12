class EventsController < ApplicationController
  def index
    @location = Location.find(params[:location_id])
  end

  def show
    @event = Event.find(params[:id])
  end
end
