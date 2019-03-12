class ReservationsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @reservation  = Reservation.find_or_create_by(
                      event_id: params[:event_id],
                      user:     current_user
                    )
    redirect_back(fallback_location: root_url, notice: "Reserved!")
  end

  def destroy
  end



end
