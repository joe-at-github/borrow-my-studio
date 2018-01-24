Rails.application.routes.draw do

  get 'home/index'

devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

resources :users do
resource :account, only: [:show, :new, :create, :edit, :update]
end

resources :items do
  
end


root 'home#index'
end
