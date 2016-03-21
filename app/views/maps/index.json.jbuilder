json.array!(@maps) do |map|
  json.extract! map, :id, :name, :code, :rows, :cols, :game_id
  json.url map_url(map, format: :json)
end
