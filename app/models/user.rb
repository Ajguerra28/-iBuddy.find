class User < ApplicationRecord
  has_many :review_users, foreign_key: :reviewee_id, class_name: "User"
  has_many :review_users, foreign_key: :reviewer_id, class_name: "User"
  has_many :events
  has_many :bookings
  has_many :booked_events_days, :through => :bookings, :source => :event_day
  has_one_attached :avatar
  has_many :review_user
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end