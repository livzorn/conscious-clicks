class AddColorToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :color, :string, default: "#A5B8FF"
  end
end
