class EventsController < ApplicationController


  def index
    @date = Date.parse(params[:date]) rescue Date.today
    page = (params[:page] || 1).to_i
    per_page  = 8
    @location = Location.find(params[:location_id])
    @events = Location.find_by_id(params[:location_id])
                      .events
                      .where(datetime: @date.beginning_of_day..@date.end_of_day)
                      .ordered
                      .paginate(page: page, per_page: per_page)
  end

  def show
    @event = Event.find(params[:id])
    @location = Location.find(params[:location_id])
  end

  def update
  end

end
