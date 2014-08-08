json.array!(@line_properties) do |line_property|
  json.extract! line_property, :id, :targetable_id, :targetable_type, :name
  json.url line_property_url(line_property, format: :json)
end
