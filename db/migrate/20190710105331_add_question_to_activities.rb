class AddQuestionToActivities < ActiveRecord::Migration[5.2]
  def change
    add_reference :activities, :question, foreign_key: true
  end
end
