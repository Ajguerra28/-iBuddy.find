class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :user
  belongs_to :event

  validates_uniqueness_of :user, scope: :event
end
