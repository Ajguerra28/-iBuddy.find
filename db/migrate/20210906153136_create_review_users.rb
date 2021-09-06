class CreateReviewUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :review_users do |t|
      t.integer :rating
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
