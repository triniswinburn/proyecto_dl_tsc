class House < ApplicationRecord
  belongs_to :user
  belongs_to :company
  belongs_to :region
  has_many :favs
  has_many :quotations
  belongs_to :HouseSize

  # mount_uploader :photo, PhotoUploader
end
