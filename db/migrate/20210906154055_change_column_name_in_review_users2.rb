class ChangeColumnNameInReviewUsers2 < ActiveRecord::Migration[6.1]
  def change
    rename_column :review_users, :user_id, :reviewer_id
  end
end
