class AddPlanetToPlanetMaterials < ActiveRecord::Migration[5.2]
  def change
    add_reference :planet_materials, :planet, foreign_key: true
  end
end
