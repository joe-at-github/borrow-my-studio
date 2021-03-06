Rails.application.routes.draw do

  get 'home/index'

devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', 
    :omniauth_callbacks => "users/omniauth_callbacks" }

resources :users do
  resource :account, only: [:show, :new, :create, :edit, :update]
  resource :listings, only: [:show]

end

resources :conversations, only: [:index, :show, :destroy] do
  member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end

resources :messages, only: [:new, :create]

resources :items do
  collection do
    get 'search'
  end
end



root 'home#index'
end

