class HomeController < ApplicationController

  def index
    @locations = Location.all
    @events = Event.all

    term = params[:term]

    @results = Location.where("name ILIKE ? OR city ILIKE ? OR zipcode ILIKE ?", "%#{term}%", "%#{term}%", "%#{term}%")
  end
end
