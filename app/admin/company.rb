ActiveAdmin.register Company do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
	column :user
	column :name
	column :email
	column :address
	column :photo
	column :created_at
	column :updated_at
	actions
end

filter :user
filter :house

form do |f|
	inputs "NUEVO USER" do
		input :user
		input :email
		input :address
		input :photo
	end
	actions
end

permit_params :user, :name, :email, :address, :phone, :photo

end
