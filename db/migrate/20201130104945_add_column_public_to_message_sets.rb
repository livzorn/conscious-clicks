class AddColumnPublicToMessageSets < ActiveRecord::Migration[6.0]
  def change
    add_column :message_sets, :public, :boolean, default: false
  end
end
