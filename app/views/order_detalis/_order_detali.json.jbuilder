json.extract! order_detali, :id, :order_id, :book_id, :price, :created_at, :updated_at
json.url order_detali_url(order_detali, format: :json)
