class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :reward
      t.integer :stage
      t.integer :planet_id
      t.integer :question_id

      t.timestamps
    end
  end
end
