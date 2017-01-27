ActiveAdmin.register House do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	index do
		 column :id
		 column :company
		 column :user
		 column :name
		 column :description
		 column :mts
		 column :price
		 column :photo
		 column :created_at
		 column :updated_at
		 actions
	end

	filter :user
	filter :company

	form do |f|
		inputs "NUEVA CASA" do
			input :company
			input :user
			input :name
			input :description
			input :mts
			input :house_size
			input :price
			input :house_value
			input :photo
		end
		actions
	end

permit_params :email, :password, :name, :user_id, :company_id, :region, :region_id, :house_size_id, :mts, :description, :house_value_id, :house_build_id, :price, :photo, :fav

end
