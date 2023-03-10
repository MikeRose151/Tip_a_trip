class Destination < ApplicationRecord
  has_many :itineraries
  has_many :activities

  has_one_attached :photo
end
