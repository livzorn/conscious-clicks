class AddUserToMessageSets < ActiveRecord::Migration[6.0]
  def change
    add_reference :message_sets, :user, null: false, foreign_key: true
  end
end
