class ChangeMessagesToHStore < ActiveRecord::Migration[6.0]
  def change
    add_column :message_sets, :message_hash, :hstore, default: {}, null: false
    remove_column :message_sets, :link
  end
end
