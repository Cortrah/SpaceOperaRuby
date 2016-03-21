json.array!(@environment_types) do |environment_type|
  json.extract! environment_type, :id, :name, :code, :description
  json.url environment_type_url(environment_type, format: :json)
end
