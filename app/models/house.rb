class House < ApplicationRecord
  belongs_to :user
  belongs_to :company
  belongs_to :region
  has_many :favs
  has_many :quotations, dependent: :destroy
  belongs_to :house_size
  belongs_to :house_value
  belongs_to :house_build

  has_many :fav_houses
  has_many :favorited_by, through: :fav_houses, source: :user

  mount_uploader :photo, PhotoUploader
end