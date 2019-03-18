class Profile < ApplicationRecord
  belongs_to :user
  has_many :reservations, through: :user
  has_one_attached :pic
end