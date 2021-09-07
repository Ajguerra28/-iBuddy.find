class AddPriceToSchemaEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :price, :float
    add_column :bookings, :max_people, :integer
  end
end
