json.extract! user, :id, :name, :email, :phone, :photo, :fav_id, :created_at, :updated_at, :image
json.url user_url(user, format: :json)