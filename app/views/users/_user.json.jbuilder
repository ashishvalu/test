json.extract! user, :id, :name, :email, :brith_date, :phone, :gender, :created_at, :updated_at
json.url user_url(user, format: :json)
