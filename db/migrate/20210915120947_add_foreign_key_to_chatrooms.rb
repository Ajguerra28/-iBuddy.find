class AddForeignKeyToChatrooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :chatrooms, :user
    add_reference :chatrooms, :user, index: true
  end
end
