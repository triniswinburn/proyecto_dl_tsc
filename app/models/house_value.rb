class HouseValue < ApplicationRecord
	has_many :houses, dependent: :destroy
end
