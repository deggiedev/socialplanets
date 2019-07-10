class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :resource_id
      t.string :answer
      t.string :opt1
      t.string :opt2
      t.string :opt3

      t.timestamps
    end
  end
end
