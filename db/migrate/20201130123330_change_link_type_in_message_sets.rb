class ChangeLinkTypeInMessageSets < ActiveRecord::Migration[6.0]
  def change
    change_column :message_sets, :link, :text
  end
end
