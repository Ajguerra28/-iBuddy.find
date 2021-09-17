class CreateTableReviewUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :review_users do |t|
      t.integer :rating
      t.string :content
      t.references :reviewee, null: false, foreign_key: { to_table: :users }
      t.references :reviewer, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
