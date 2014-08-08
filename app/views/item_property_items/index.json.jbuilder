json.array!(@item_property_items) do |item_property_item|
  json.extract! item_property_item, :id, :property_item_id, :item_id
  json.url item_property_item_url(item_property_item, format: :json)
end
