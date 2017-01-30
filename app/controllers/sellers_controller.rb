class SellersController < InheritedResources::Base
	before_action :authenticate_user!

  private

    def seller_params
      params.require(:seller).permit(:name, :email, :phone, :photo)
    end
end

