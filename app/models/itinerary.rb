class Itinerary < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :itinerary_activities
  has_many :activities, through: :itinerary_activities

  validates :title, presence: true
  validates :destination, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
