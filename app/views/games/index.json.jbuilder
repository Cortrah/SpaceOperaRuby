json.array!(@games) do |game|
  json.extract! game, :id, :name, :next_tick
  json.url game_url(game, format: :json)

  json.positions game.Positions, :name, :code, :color, :first_turn, :last_turn, :is_secret

  json.map do |json|
    json.(game.Map, :rows, :cols)
    json.regions game.Map.Regions, :name, :code, :row, :col, :money, :materials, :research, :is_secret, :position_state_id, :environment_id
  end

  json.turns game.Turns, :number, :introduction, :results

  # json.turns game.map
    # Regions
      # Region
      #  name
      #  code
      #  col
      #  row
      #  environment_id -> environment.code
      #  money
      #  materials
      #  research
      #  is_secret
      #  position_state_id -> position -> position.color

end
