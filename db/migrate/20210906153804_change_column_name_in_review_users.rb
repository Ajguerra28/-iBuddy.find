class ChangeColumnNameInReviewUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :review_users, :user_id, :reviewee_id
  end
end
