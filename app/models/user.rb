class User < ApplicationRecord
  has_many :review_users, class_name: "User", foreign_key: "reviewee_id", dependent: :destroy
  has_many :review_users, class_name: "User", foreign_key: "reviewer_id", dependent: :destroy
  has_many :events
  has_many :bookings
  has_many :chatrooms
  has_many :messages
  has_many :booked_events_days, :through => :bookings, :source => :event_day
  has_one_attached :avatar

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
