class Event < ApplicationRecord
  belongs_to :user
  has_many :booking_days

  validates :location, :name, :category, :date, :description, presence: true
  validates :category, inclusion: { in: ['Night out', 'Gastronomy', 'Sports', 'Travel', 'Experiences', 'Events', 'Culture', 'Meet'] }
end
