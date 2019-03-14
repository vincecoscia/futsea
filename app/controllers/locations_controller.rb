class LocationsController < ApplicationController

  # GET /tasks
  # GET /tasks.json
  def index
    respond_to do |format|
      format.html 
      format.json do
        if params[:city].present?
          @locations = Location.where(city: params[:city])
        else
          @locations = Location.all
        end
        render json: { locations: @locations }
      end
    end
  end

  #   @cities      = Location.select(:city).distinct.pluck(:city)
  # end

  def show
    @location = Location.find(params[:id])
  end
end

