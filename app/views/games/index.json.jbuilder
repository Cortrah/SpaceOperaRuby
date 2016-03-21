json.array!(@games) do |game|
  json.extract! game, :id, :name, :next_tick, :map_id, :current_turn_id
  json.url game_url(game, format: :json)
end
