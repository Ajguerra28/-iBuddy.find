class AddReferenceToReviewUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :review_users, :user, index: true, foreign_key: {to_table: :users}
  end
end
