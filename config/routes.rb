Rails.application.routes.draw do

  get 'home/index'

devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

resources :users


root 'home#index'
end
