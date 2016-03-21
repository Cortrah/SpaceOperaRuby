json.array!(@turns) do |turn|
  json.extract! turn, :id, :number, :introduction, :results, :game_id
  json.url turn_url(turn, format: :json)
end
