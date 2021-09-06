class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :booking_day
end
