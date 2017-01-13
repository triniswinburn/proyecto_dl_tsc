class PublicController < ApplicationController
  def index
  	@houses = House.all
  	if params[:region].present?
  		@houses = @houses.where(region_id: params[:region])
  	end

  	if params[:house_size].present?
  		@houses = @houses.where(house_size_id: params[:house_size])
  	end

  end
end
