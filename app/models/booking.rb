class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :booking_day

  validates :status, presence: true

  enum status: {
    active: 0,
    unavailable: 1
  }
end
