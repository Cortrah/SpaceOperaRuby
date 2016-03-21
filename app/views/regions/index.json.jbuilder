json.array!(@regions) do |region|
  json.extract! region, :id, :name, :code, :row, :col, :environment_id, :position_state_id, :map_id, :money, :materials, :research
  json.url region_url(region, format: :json)
end
