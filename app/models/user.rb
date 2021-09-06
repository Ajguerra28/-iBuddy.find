class User < ApplicationRecord
  has_many :review_users, foreign_key: :reviewee_id
  has_many :review_users, foreign_key: :reviewer_id
  has_many :events
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
