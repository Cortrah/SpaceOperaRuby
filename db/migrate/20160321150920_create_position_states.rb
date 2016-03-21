class CreatePositionStates < ActiveRecord::Migration
  def change
    create_table :position_states do |t|
      t.string :name
      t.integer :position_id
      t.integer :turn_id
      t.integer :score
      t.integer :trade_value
      t.integer :money_income
      t.integer :materials_income
      t.integer :research_income
      t.integer :saved_money
      t.integer :saved_materials
      t.integer :saved_research

      t.timestamps null: false
    end
  end
end
