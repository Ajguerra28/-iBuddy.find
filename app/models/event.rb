class Event < ApplicationRecord
  belongs_to :user
  has_many :booking_days

  validates :location, :name, :category, :date, :description, presence: true
  validates :category, inclusion: { in: %w[Surf Diving Football Dinner Trip etc] }
end
