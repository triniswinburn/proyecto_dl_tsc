ActiveAdmin.register Seller do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
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
		 column :name
		 column :email
		 column :phone
		 column :photo
		 column :created_at
		 column :updated_at
		 actions
	end

	filter :email
	filter :name
	filter :id

	form do |f|
		inputs "NUEVO USER" do
			input :name
			input :email
			input :phone
			input :photo
			input :password
		end
		actions
	end

permit_params :name, :email, :phone, :photo, :company, :company_id, :password

end