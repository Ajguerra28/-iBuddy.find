class ChangeColumnTypeInChatrooms < ActiveRecord::Migration[6.1]
  def change
    change_column :chatrooms, :event_owner, :string
  end
end
