module SearchableByName
  extend ActiveSupport::Concern
  included do
    scope :search, ->(term) { where("name ILIKE ? OR city ILIKE ? OR zipcode ILIKE ?", "%#{term}%", "%#{term}%", "%#{term}%") }
  end

    def as_json(options={})
    {
      id:       id,
      name:     name,
      city:     city,
      zipcode:  zipcode,
      location: "/#{self.class.name.pluralize.downcase}/#{id}/events"
    }
    end
end