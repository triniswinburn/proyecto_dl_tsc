class PublicController < ApplicationController
  def index
  	@houses = House.all
  	if params[:region].present?
  		@region = Region.find(params[:region])
  		@houses = @region.houses
  	end

  end
end
