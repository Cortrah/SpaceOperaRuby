class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.string :code
      t.integer :row
      t.integer :col
      t.integer :environment_id
      t.integer :position_state_id
      t.integer :map_id
      t.integer :money
      t.integer :materials
      t.integer :research

      t.timestamps null: false
    end
  end
end
