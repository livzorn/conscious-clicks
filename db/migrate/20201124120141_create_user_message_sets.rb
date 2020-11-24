class CreateUserMessageSets < ActiveRecord::Migration[6.0]
  def change
    create_table :user_message_sets do |t|
      t.references :message_set, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
