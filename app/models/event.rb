class Event < ApplicationRecord
  belongs_to :user
  has_many :booking_days
end
