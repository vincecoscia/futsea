class Event < ApplicationRecord
  belongs_to :field
  has_one :location, through: :field
end
