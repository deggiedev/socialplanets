class AddMaterialToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :material, foreign_key: true
  end
end
