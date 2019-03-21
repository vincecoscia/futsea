class Reservation < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_one :location, through: :event

  after_create :update_event_status

  scope :past, -> { joins(:event).where("events.datetime < ?", Date.today).order("events.datetime DESC") }
  scope :future, -> { joins(:event).where("events.datetime > ?", Date.today).order("events.datetime ASC") }




  def max_players
    self.event.field.game_type * 2
  end

  def current_players
    self.event.reservations.count
  end

  def update_event_status
    p 'status update check'
    if current_players == max_players
      self.event.update_attribute(:event_full, true)
      p '============== event now full ============'
    else
    p "#{self.event.reservations.count} in event"
    end
  end

end
