class AddUserReferencesToGoals < ActiveRecord::Migration[6.0]
  def change
    add_reference :goals, :user, null: false, foreign_key: true
  end
end
