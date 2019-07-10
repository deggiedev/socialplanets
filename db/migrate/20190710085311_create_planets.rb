class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :planet_name
      t.integer :planet_stage
      t.integer :user_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
