class User < ApplicationRecord
  has_many :review_users, foreign_key: :reviewee_id, class_name: "User"
  has_many :review_users, foreign_key: :reviewer_id, class_name: "User"
  has_many :events
  # geocoded_by :location

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
