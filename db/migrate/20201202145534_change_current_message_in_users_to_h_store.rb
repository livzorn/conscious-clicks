class ChangeCurrentMessageInUsersToHStore < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :current_message
    add_column :users, :current_message, :hstore, default: {}, null: false
  end
end
