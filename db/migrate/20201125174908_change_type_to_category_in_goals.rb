class ChangeTypeToCategoryInGoals < ActiveRecord::Migration[6.0]
  def change
    rename_column :goals, :type, :category
  end
end
