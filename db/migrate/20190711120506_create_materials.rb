class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :material_type
      t.integer :material_total

      t.timestamps
    end
  end
end
