class HouseSize < ApplicationRecord
	has_many :houses
	def name
		"#{from} mts2 - #{to} mts2"
	end
end
