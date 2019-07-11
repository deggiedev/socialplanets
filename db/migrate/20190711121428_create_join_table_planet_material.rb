class CreateJoinTablePlanetMaterial < ActiveRecord::Migration[5.2]
  def change
    create_join_table :planets, :materials do |t|
      # t.index [:planet_id, :material_id]
      # t.index [:material_id, :planet_id]
    end
  end
end
