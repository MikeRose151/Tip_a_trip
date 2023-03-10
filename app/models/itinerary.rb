class Itinerary < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :itinerary_activities
  has_many :activities, through: :itinerary_activities
end
