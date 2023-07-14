class Itinerary < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :itinerary_activities
  has_many :activities, through: :itinerary_activities

  validate :start_date_must_be_valid
  validate :end_date_must_be_valid

  validates :title, presence: true
  validates :destination, presence: true

  private

  def start_date_must_be_valid
    if start_date.present? && start_date < Date.current
      errors.add(:start_date, "must be no earlier than today")
    end
  end

  def end_date_must_be_valid
    if end_date.present? && end_date < start_date
      errors.add(:end_date, "must be no earlier than start date")
    end
  end
end
