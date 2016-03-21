class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.string :code
      t.integer :color
      t.integer :first_turn
      t.integer :last_turn
      t.boolean :is_secret
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
