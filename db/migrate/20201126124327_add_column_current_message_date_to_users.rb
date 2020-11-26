class AddColumnCurrentMessageDateToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :current_message_date, :date
  end
end
