class Fav < ApplicationRecord
  has_many :user
  has_many :house
end
