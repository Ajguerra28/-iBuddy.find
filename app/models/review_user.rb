class ReviewUser < ApplicationRecord
  belongs_to :reviewer, :class_name => 'User'
  belongs_to :reviewee, :class_name => 'User'
end
