class CreateTableEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :location
      t.string :name
      t.string :category
      t.date :date
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
