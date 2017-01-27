class Company < ApplicationRecord
  belongs_to :user
  has_many :houses

  mount_uploader :photo, PhotoUploader
end
