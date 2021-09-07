class BookingDay < ApplicationRecord
  belongs_to :event
  has_many :bookings

  validates :date, presence: true
end
