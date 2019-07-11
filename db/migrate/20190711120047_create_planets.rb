class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :planet_name
      t.integer :stage
      t.integer :high_score

      t.timestamps
    end
  end
end
