class Location < ApplicationRecord
  has_many :fields
  has_many :events, through: :fields
end
