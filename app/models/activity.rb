class Activity < ApplicationRecord
  belongs_to :destination
  has_many :itineraries, through: :itinerary_activities
  has_many :itinerary_activities
  has_many :users, through: :favourites
  has_many :favourites

  has_one_attached :photo
end
