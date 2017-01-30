class Company < ApplicationRecord
  belongs_to :user
  has_many :houses
  has_many :sellers

  mount_uploader :photo, PhotoUploader
end
