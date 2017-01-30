class Seller < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :trackable, :validatable

	has_many :houses
	belongs_to :company
	has_many :quotations, through: :houses

	mount_uploader :photo, PhotoUploader
end
