class AddUserToPlanets < ActiveRecord::Migration[5.2]
  def change
    add_reference :planets, :user, foreign_key: true
  end
end
