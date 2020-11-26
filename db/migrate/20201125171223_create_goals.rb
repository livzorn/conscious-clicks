class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :type
      t.text :content

      t.timestamps
    end
  end
end
