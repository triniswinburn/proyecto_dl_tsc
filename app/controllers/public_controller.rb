class PublicController < ApplicationController
  def index
  	@houses = House.all
  	if params[:region].present?
  		@houses = @houses.where(region_id: params[:region])
  	end

  	if params[:house_size].present?
  		@houses = @houses.where(house_size_id: params[:house_size])
  	end

  	if params[:house_value].present?
  		@houses = @houses.where(house_value_id: params[:house_value])
  	end

  end
end
