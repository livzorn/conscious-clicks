class AddColumnCurrentMessageToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :current_message, :string
  end
end
