class Reservation < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_one :location, through: :event

  after_create :update_event_status

  def update_event_status
    p 'status update check'
    players = self.event.field.game_type*2
    if self.event.reservations.count == players
      self.event.event_full = true
      p 'event now full'
    else
    p "#{self.event.reservations.count} in event"
    end
  end


end
