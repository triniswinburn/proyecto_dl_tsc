ActiveAdmin.register Quotation do

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
		 column :subject
		 column :message
		 column :user_id
		 column :house_id
		 column :created_at
		 actions
	end

	filter :user
	filter :house

	form do |f|
		inputs "NUEVO USER" do
			input :subject
			input :message
			input :user
			input :house
		end
		actions
	end


permit_params :subject, :email, :message, :user_id, :house_id

end