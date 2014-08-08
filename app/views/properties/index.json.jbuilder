json.array!(@properties) do |property|
  json.extract! property, :id, :name, :targetable_id, :targetable_type
  json.url property_url(property, format: :json)
end
