class AddResourceToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :resource, foreign_key: true
  end
end
