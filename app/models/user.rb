class User < ApplicationRecord
  has_many :favs
  has_many :houses
  has_many :companies
  has_many :quotations
end
