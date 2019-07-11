class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :answer
      t.string :choice_a
      t.string :choice_b
      t.string :choice_c
      t.string :choice_d

      t.timestamps
    end
  end
end
