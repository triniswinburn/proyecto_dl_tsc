Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  root to: 'public#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :houses do
    resources :quotations
  end

  resources :companies, :only => [:read]

  resources :users, :only => [:read]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# CRUD
# create
# read
# update
# destroy
