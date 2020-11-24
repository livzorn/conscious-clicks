class CreateUserMoods < ActiveRecord::Migration[6.0]
  def change
    create_table :user_moods do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :mood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
