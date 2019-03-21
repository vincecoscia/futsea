class Event < ApplicationRecord
  include SearchableByName

  belongs_to :field
  has_one :location, through: :field
  has_many :reservations
  has_many :users, through: :reservations

  scope :today, -> { where(datetime: Date.today ) }
  scope :ordered,   ->  { order(datetime: :asc) }
  scope :current_date, -> { where("datetime >= ?", DateTime.now)}
  scope :event_open, -> { where("event_full = ?", false )}
  scope :event_closed, -> { where("event_full = ?", true )}
  scope :ordered_players, -> { left_joins(:reservations).group(:id).order("count(reservations.event_id) DESC") }

  def max_players
    (self.field.game_type) * 2
  end

  def current_players
    self.reservations.count
  end


end
