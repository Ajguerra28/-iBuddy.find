class Event < ApplicationRecord
  belongs_to :user
  has_many :booking_days
  geocoded_by :location

  CATEGORIES = ["Ruby", "JavaScript", "CSS"]

  after_validation :geocode, if: :will_save_change_to_location?
  validates :location, :name, :category, :date, :description, presence: true
  validates :category, inclusion: { in: ['Night out', 'Gastronomy', 'Sports', 'Travel', 'Experiences', 'Events', 'Culture', 'Meet'] }
end
