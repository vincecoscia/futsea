class Event < ApplicationRecord
  include SearchableByName
  
  belongs_to :field
  has_one :location, through: :field
  has_many :reservations
  has_many :users, through: :reservations

  scope :today, -> { where(date: Date.today ) }
  scope :ordered,   ->  { order(time: :asc) }
  scope :current_date, -> { where("date >= ?", Date.today)}


end

