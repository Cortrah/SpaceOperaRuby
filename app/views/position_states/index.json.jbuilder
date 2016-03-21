json.array!(@position_states) do |position_state|
  json.extract! position_state, :id, :name, :position_id, :turn_id, :score, :trade_value, :money_income, :materials_income, :research_income, :saved_money, :saved_materials, :saved_research
  json.url position_state_url(position_state, format: :json)
end
