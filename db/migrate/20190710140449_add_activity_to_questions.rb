class AddActivityToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :activity, foreign_key: true
  end
end
