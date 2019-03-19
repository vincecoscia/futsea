class EventsController < ApplicationController


  def index
    date = params[:date] || Date.current
    page = (params[:page] || 1).to_i
    per_page  = 5
    @location = Location.find(params[:location_id])
    @events = Location.find_by_id(params[:location_id])
                .events
                .where(date: date)
                .ordered
                .paginate(page: page, per_page: per_page)

  end

  def show
    @event = Event.find(params[:id])
  end

  def update
  end

end
