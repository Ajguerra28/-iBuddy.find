class EventDay < ApplicationRecord
  belongs_to :event
  has_many :bookings

  validates :date, presence: true

  def booked_by?(user)
    bookings.exists?(user: user)
  end
end
