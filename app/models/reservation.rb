class Reservation < ApplicationRecord
  belongs_to :event
  has_one :location, through :event

end
