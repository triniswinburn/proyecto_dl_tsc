Rails.application.routes.draw do
  root to: 'public#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :houses
  resources :companies
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
