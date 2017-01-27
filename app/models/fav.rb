class Fav < ApplicationRecord
  has_many :users
  has_many :houses
end
