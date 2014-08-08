json.array!(@line_property_items) do |line_property_item|
  json.extract! line_property_item, :id, :name, :line_property
  json.url line_property_item_url(line_property_item, format: :json)
end
