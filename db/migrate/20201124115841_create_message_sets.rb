class CreateMessageSets < ActiveRecord::Migration[6.0]
  def change
    create_table :message_sets do |t|
      t.string :theme
      t.text :messages, array: true, default: []
      t.string :link

      t.timestamps
    end
  end
end
