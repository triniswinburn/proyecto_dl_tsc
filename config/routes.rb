Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  root to: 'public#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :houses do
      resources :quotations
    end
    
  resources :companies
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
