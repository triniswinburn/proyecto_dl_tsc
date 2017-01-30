Rails.application.routes.draw do
  resources :sellers
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

  resources :companies

  resources :quotations

  resources :users

  resources :houses do
    resources :fav_house, :only => [:create]
  end

end


# CRUD
# create
# read
# update
# destroy