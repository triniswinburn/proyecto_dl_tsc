ActiveAdmin.register User do

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
		 column :email
		 column :created_at
		 column :mi_columna do
		 	"hola"
		 end
		 actions
	end

	filter :email


	form do |f|
		inputs "NUEVO USER" do
			input :name
			input :email
			input :password
		end
	end
	
end