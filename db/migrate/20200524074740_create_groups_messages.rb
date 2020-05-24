class CreateGroupsMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :groups_messages do |t|
      t.integer :group_id
      t.integer :message_id
      t.timestamps
    end
  end
end
