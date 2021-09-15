class ConfigureChatroomDb < ActiveRecord::Migration[6.1]
  def change
    add_column :chatrooms, :user, :integer, references: :users
    add_column :chatrooms, :event_owner, :integer
  end
end
