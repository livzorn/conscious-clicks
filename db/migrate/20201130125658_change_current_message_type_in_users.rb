class ChangeCurrentMessageTypeInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :current_message, :text
  end
end
