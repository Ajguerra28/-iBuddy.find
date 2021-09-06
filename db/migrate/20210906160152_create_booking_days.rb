class CreateBookingDays < ActiveRecord::Migration[6.1]
  def change
    create_table :booking_days do |t|
      t.date :date
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
