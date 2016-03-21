json.array!(@border_types) do |border_type|
  json.extract! border_type, :id, :name, :code, :description, :is_directional
  json.url border_type_url(border_type, format: :json)
end
