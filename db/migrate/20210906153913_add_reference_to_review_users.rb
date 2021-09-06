class AddReferenceToReviewUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :review_users, :user, index: true
  end
end
