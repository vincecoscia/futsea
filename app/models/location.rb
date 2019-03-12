class Location < ApplicationRecord
  include SearchableByName

  has_many :fields
  has_many :events, through: :fields
end
