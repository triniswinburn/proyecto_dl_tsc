class QuotationsController < ApplicationController
	before_action :authenticate_user!
	# GET /quotations
	# GET /quotations.json
	def index
		@quotations = Quotation.all
	end


	# GET /quotations/new
	def new
		@house = House.find params[:house_id]
		@quotation = Quotation.new

	end


	# GET /quotations/1/edit
	def edit
	end


	# POST /quotations
	# POST /quotations.json
	def create
		@quotation = Quotation.new(quotation_params)
		@house = House.find params[:house_id]

		@quotation.user = current_user
		@quotation.house = @house

		respond_to do |format|
			if @quotation.save
				format.html { redirect_to @house, notice: 'Quotation was successfully created.' }
				format.json { render :show, status: :created, location: @quotation }
			else
				format.html { render :new }
				format.json { render json: @quotation.errors, status: :unprocessable_entity }
			end
		end
	end


	# PATCH/PUT /quotation/1
	# PATCH/PUT /quotation/1.json
	def update
		respond_to do |format|
			if @quotation.update(quotation_params)
				format.html { redirect_to @quotation, notice: 'Quotation was successfully updated.' }
				format.json { render :show, status: :ok, location: @quotation }
			else
				format.html { render :edit }
				format.json { render json: @quotation.errors, status: :unprocessable_entity }
			end
		end
	end


	# DELETE /quotation/1
	# DELETE /quotation/1.json
	def destroy
		@quotation.destroy
		respond_to do |format|
			format.html { redirect_to quotations_url, notice: 'Quotation was successfully destroyed.' }
			format.json { head :no_content }
		end
	end


	private

	# Use callbacks to share common setup or constraints between actions.
	def set_quotation
		@quotation = Quotation.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def quotation_params
		params.require(:quotation).permit(:name, )
	end
end
