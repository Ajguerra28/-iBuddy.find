class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :location, :string
    add_column :users, :description, :string
    add_column :users, :gender, :string
    add_column :users, :phone_number, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
