class Itinerary < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :itinerary_activities
  has_many :activities, through: :itinerary_activities
  validates :start_date, presence: true, date: { after_or_equal_to: -> { Date.current }, message: "must be no earlier than today" }
  validates :end_date, presence: true, date: { after_or_equal_to: :start_date, message: "must be no earlier than start date" }
  validates :title, presence: true
  validates :destination, presence: true
end
