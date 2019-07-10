class AddPlanetToActivities < ActiveRecord::Migration[5.2]
  def change
    add_reference :activities, :planet, foreign_key: true
  end
end
