json.array!(@item_properties) do |item_property|
  json.extract! item_property, :id, :item, :property_id, :alias
  json.url item_property_url(item_property, format: :json)
end
