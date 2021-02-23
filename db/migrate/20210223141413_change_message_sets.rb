class ChangeMessageSets < ActiveRecord::Migration[6.0]
  def change
    change_table :message_sets do |t|
      t.remove :messages
      t.string :message_1
      t.string :link_1
      t.string :message_2
      t.string :link_2
      t.string :message_3
      t.string :link_3
      t.string :message_4
      t.string :link_4
      t.string :message_5
      t.string :link_5
      t.string :message_6
      t.string :link_6
      t.string :message_7
      t.string :link_7
      t.string :message_8
      t.string :link_8
      t.string :message_9
      t.string :link_9
      t.string :message_10
      t.string :link_10
    end
  end
end
