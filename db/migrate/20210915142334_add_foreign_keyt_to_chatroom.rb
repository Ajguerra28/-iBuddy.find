class AddForeignKeytToChatroom < ActiveRecord::Migration[6.1]
  def change
    remove_column :chatrooms, :event_owner
    add_reference :chatrooms, :event, index: true
  end
end
