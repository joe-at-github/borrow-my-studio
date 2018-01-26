Rails.application.routes.draw do

  get 'home/index'

devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

resources :users do
  resource :account, only: [:show, :new, :create, :edit, :update]

end

resources :conversations, only: [:index, :show, :destroy] do
  member do
    post :reply
  end
  member do
    post :restore
  end
  collection do
    delete :empty_trash
  end

end

resources :messages, only: [:new, :create]

resources :items  

root 'home#index'
end

