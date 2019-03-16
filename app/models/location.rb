class Location < ApplicationRecord
  include SearchableByName

  has_many :fields
  has_many :events, through: :fields

  def as_json(options={})
    {
      id:             id,
      name:           name,
      street:         street,
      city:           city,
      state:          state,
      neighborhood:   neighborhood,
      url:            "/locations/#{id}/events",
      lon:            lon,
      lat:            lat,
      open:           open,
      close:          close,
      price:          price,
      img:            img,
      img2:           img2,
      img3:           img3,
      today:          Date.today,
    }
  end
end
