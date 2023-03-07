class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :activities, through: :itinerary_activities
end
