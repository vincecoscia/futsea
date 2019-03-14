class CitiesController < ApplicationController
  def index
    render json: Location.select(:city).distinct.pluck(:city)
  end
end