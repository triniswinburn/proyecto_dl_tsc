json.extract! seller, :id, :name, :email, :phone, :photo, :created_at, :updated_at
json.url seller_url(seller, format: :json)