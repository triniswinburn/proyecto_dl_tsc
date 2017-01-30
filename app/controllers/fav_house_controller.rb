class FavHouseController < ApplicationController
	before_action :authenticate_user!

    # GET /fav_houses
	# GET /fav_houses.json
	def index
		@fav_houses = FavHouse.all
	end

	# GET /fav_houses/new
	def new
		@houses = House.find params[:house_id, :user_id]
		@fav_houses = FavHouse.new
	end

    # GET /fav_houses/1/edit
	def edit
	end

    # POST /fav_house
	# POST /fav_house.json
	def create
		@fav_houses = FavHouse.new
		@house = House.find params[:house_id]

		@fav_houses.user = current_user
		@fav_houses.house = @house

		respond_to do |format|
			if @fav_houses.save
				format.html { redirect_to @house, notice: 'Has agregado la casa a tus favoritas.' }
				format.json { render :show, status: :created, location: @fav_houses }
			else
				format.html { render :new }
				format.json { render json: @fav_houses.errors, status: :unprocessable_entity }
			end
		end
	end

	private

	# Use callbacks to share common setup or constraints between actions.
	def set_quotation
		@fav_houses = FavHouse.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def fav_house_params
		params.require(:fav_houses).permit(:user_id, :house_id )
	end

end

