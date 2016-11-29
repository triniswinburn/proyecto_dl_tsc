json.extract! house, :id, :name, :mts, :description, :price, :region, :photo, :fav, :user_id, :company_id, :created_at, :updated_at
json.url house_url(house, format: :json)