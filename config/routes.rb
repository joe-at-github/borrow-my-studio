Rails.application.routes.draw do

  get 'home/index'

devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

resources :users do
  resource :account, only: [:show, :new, :create, :edit, :update]


resources :conversations do
  resources :messages
end

end

resources :items  

root 'home#index'
end
