class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :resource_name
      t.integer :resource_total

      t.timestamps
    end
  end
end
