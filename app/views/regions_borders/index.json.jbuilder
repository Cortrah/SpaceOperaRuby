json.array!(@regions_borders) do |regions_border|
  json.extract! regions_border, :id, :name, :source_id, :sink_id, :border_type_id, :is_secret
  json.url regions_border_url(regions_border, format: :json)
end
