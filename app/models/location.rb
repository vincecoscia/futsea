class Location < ApplicationRecord
  include SearchableByName

  has_many :fields
  has_many :events, through: :fields

  def as_json(options={})
    {
      id:        id,
      name:      name,
      street:    street,
      city:      city,
      state:     state,
      url:       "/locations/#{id}/events",
      lon:       lon,
      lat:       lat,
      open:      open,
      close:     close,
      price:     price,
    }
  end
end
