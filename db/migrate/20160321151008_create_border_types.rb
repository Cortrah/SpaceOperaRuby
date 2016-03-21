class CreateBorderTypes < ActiveRecord::Migration
  def change
    create_table :border_types do |t|
      t.string :name
      t.string :code
      t.text :description
      t.boolean :is_directional

      t.timestamps null: false
    end
  end
end
