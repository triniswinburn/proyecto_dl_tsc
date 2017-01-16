class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :favs
  has_many :houses
  has_many :companies
  has_many :quotations

  enum role: [:guest, :user, :seller, :admin]

  mount_uploader :photo, PhotoUploader

end
