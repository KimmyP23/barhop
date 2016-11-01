Rails.application.routes.draw do

      root 'home#index'

      devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

      resources :neighborhoods, only: :index do
        resources :bars
      end

end
