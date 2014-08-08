json.array!(@items) do |item|
  json.extract! item, :id, :shop_id, :product_id
  json.url item_url(item, format: :json)
end
