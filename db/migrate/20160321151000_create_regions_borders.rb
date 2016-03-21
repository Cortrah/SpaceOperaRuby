class CreateRegionsBorders < ActiveRecord::Migration
  def change
    create_table :regions_borders do |t|
      t.string :name
      t.integer :source_id
      t.integer :sink_id
      t.integer :border_type_id
      t.boolean :is_secret

      t.timestamps null: false
    end
  end
end
