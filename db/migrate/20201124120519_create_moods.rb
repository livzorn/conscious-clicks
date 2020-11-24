class CreateMoods < ActiveRecord::Migration[6.0]
  def change
    create_table :moods do |t|
      t.string :emoji
      t.string :name
      t.integer :happiness_level

      t.timestamps
    end
  end
end
