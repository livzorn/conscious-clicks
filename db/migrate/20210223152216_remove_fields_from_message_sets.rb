class RemoveFieldsFromMessageSets < ActiveRecord::Migration[6.0]
  def change
    change_table :message_sets do |t|
      t.remove :message_1
      t.remove :link_1
      t.remove :message_2
      t.remove :link_2
      t.remove :message_3
      t.remove :link_3
      t.remove :message_4
      t.remove :link_4
      t.remove :message_5
      t.remove :link_5
      t.remove :message_6
      t.remove :link_6
      t.remove :message_7
      t.remove :link_7
      t.remove :message_8
      t.remove :link_8
      t.remove :message_9
      t.remove :link_9
      t.remove :message_10
      t.remove :link_10
    end
  end
end
