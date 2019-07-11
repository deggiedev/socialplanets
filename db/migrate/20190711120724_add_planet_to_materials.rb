class AddPlanetToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_reference :materials, :planet, foreign_key: true
  end
end
