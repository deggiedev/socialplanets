class CreatePlanetMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :planet_materials do |t|
      t.integer :total_units

      t.timestamps
    end
  end
end
