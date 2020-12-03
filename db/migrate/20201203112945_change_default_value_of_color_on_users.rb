class ChangeDefaultValueOfColorOnUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :color, :string, default: "#7694FE"
  end
end
