class CreateEnvironments < ActiveRecord::Migration
  def change
    create_table :environments do |t|
      t.string :name
      t.string :code
      t.integer :environment_type_id
      t.text :description

      t.timestamps null: false
    end
  end
end
