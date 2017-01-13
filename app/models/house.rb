class House < ApplicationRecord
  belongs_to :user
  belongs_to :company
  belongs_to :region
  has_many :favs
  has_many :quotations
  belongs_to :house_size
  belongs_to :house_value

  # mount_uploader :photo, PhotoUploader
end
