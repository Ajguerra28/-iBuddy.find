class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event_day

  validates :status, presence: true

  enum status: {
    active: 0,
    unavailable: 1
  }
end
