json.array!(@environments) do |environment|
  json.extract! environment, :id, :name, :code, :environment_type_id, :description
  json.url environment_url(environment, format: :json)
end
