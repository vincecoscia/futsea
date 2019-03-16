class EventsController < ApplicationController


  def index
    date = params[:date] || Date.current
    @location = Location.find(params[:location_id])
    @events = Location.find_by_id(params[:location_id]).events.where( date: date).ordered.current_date
  end

  def show
    @event = Event.find(params[:id])
  end

end
