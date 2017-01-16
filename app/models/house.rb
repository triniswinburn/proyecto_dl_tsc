class House < ApplicationRecord
  belongs_to :user
  belongs_to :company
  belongs_to :region
  has_many :favs
  has_many :quotations, dependent: :destroy
  belongs_to :house_size
  belongs_to :house_value
  belongs_to :house_build

  mount_uploader :photo, PhotoUploader
end