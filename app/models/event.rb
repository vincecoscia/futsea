class Event < ApplicationRecord
  include SearchableByName

  belongs_to :field
  has_one :location, through: :field
  has_many :reservations
  has_many :users, through: :reservations

  scope :today, -> { where(date: Date.today ) }
  scope :ordered,   ->  { order(time: :asc) }
  scope :current_date, -> { where("date >= ?", Date.today)}
  scope :event_open, -> { where("event_full = ?", false )}
  scope :event_closed, -> { where("event_full = ?", true )}
  scope :ordered_players, -> { order(current_players: :desc) }

  def max_players
    (self.field.game_type) * 2
  end

  def current_players
    self.reservations.count
  end


end
