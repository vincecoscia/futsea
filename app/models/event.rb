class Event < ApplicationRecord
  include SearchableByName
  
  belongs_to :field
  has_one :location, through: :field
end
