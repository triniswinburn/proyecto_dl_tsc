class FavHouseController < ApplicationController

	def index
		@fav_house = FavHouse.all
	end

	def new
		@fav_house = FavHouse.find params[:house_id, :user_id]
		@fav = Fav.new
	end

end