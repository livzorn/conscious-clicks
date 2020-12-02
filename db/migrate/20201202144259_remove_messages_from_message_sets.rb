class RemoveMessagesFromMessageSets < ActiveRecord::Migration[6.0]
  def change
    remove_column :message_sets, :messages
    rename_column :message_sets, :message_hash, :messages
  end
end
