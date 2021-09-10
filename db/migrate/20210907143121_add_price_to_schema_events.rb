class AddPriceToSchemaEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :price, :float
    add_column :events, :max_people, :integer
  end
end
