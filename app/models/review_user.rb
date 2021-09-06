class ReviewUser < ApplicationRecord
  belongs_to :user, foreign_key: :reviewer_id, validate: true
  belongs_to :user, foreign_key: :reviewee_id, validate: true
end
