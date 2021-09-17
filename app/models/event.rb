class Event < ApplicationRecord
  belongs_to :user
  has_many :event_days
  has_many :chatrooms
  has_many :bookings, through: :event_days
  geocoded_by :location
  has_one_attached :photo

  CATEGORIES = [
    'Night Out',
    'Gastronomy',
    'Sports',
    'Travel',
    'Experiences',
    'Events',
    'Culture',
    'Meet'
  ]

  after_validation :geocode, if: :will_save_change_to_location?
  validates :location, :name, :category, :description, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  # validates :price, :max_people, numericality: { only_integer: true, greater_than: 0 }

  accepts_nested_attributes_for :event_days, allow_destroy: true

  def day
    event_days.first
  end

  def people_left
    max_people - bookings.count
  end
end
