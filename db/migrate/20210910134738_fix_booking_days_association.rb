class FixBookingDaysAssociation < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :booking_days_id
    rename_table :booking_days, :event_days
    add_reference :bookings, :event_day, foreig_key: true
  end
end
