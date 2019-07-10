class AddPlanetToResources < ActiveRecord::Migration[5.2]
  def change
    add_reference :resources, :planet, foreign_key: true
  end
end
