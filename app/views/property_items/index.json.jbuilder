json.array!(@property_items) do |property_item|
  json.extract! property_item, :id, :name
  json.url property_item_url(property_item, format: :json)
end
