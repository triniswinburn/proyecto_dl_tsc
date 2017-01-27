ActiveAdmin.register AdminUser do
  
  permit_params :email, :name, :password, :password_confirmation

  index do
    column :id
    column :email
    column :created_at
    column :updated_at
    # column :mi_columna do
    #   "hola"
    # end
    actions
  end

  filter :email
  filter :id

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
