class AddMaterialToPlanetMaterials < ActiveRecord::Migration[5.2]
  def change
    add_reference :planet_materials, :material, foreign_key: true
  end
end
