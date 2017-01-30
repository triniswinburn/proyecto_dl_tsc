class Seller < ApplicationRecord
	devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :trackable, :validatable

	has_many :houses
	belongs_to :company
	has_many :quotations, through: :houses

	mount_uploader :photo, PhotoUploader
end
