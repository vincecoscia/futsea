class EventsController < ApplicationController
  def index
    date = params[:date] || Date.current
    # @events = Event.where( date: date )
    @location = Location.find(params[:location_id])
    @events = Location.find_by_id(params[:location_id]).events.where( date: date)
  end

  def show
    @event = Event.find(params[:id])
  end
end
