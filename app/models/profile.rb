class Profile < ApplicationRecord
  belongs_to :user
  has_many :reservations, through: :user
end