class Reservation < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_one :location, through: :event

end
