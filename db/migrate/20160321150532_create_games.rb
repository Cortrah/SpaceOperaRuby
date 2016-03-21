class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.datetime :next_tick
      t.integer :map_id
      t.integer :current_turn_id

      t.timestamps null: false
    end
  end
end
