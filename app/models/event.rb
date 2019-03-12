class Event < ApplicationRecord
  include SearchableByName
  
  belongs_to :field
  has_one :location, through: :field

  scope :today, -> { where(date: Date.today ) }
end
