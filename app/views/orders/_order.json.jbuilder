json.extract! order, :id, :user_id, :address, :city, :state, :postal_code, :country, :phone, :total_price, :payment_mode, :payment_id, :created_at, :updated_at
json.url order_url(order, format: :json)
