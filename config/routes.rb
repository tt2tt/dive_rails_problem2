Rails.application.routes.draw do
  root to: 'pictures#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :show, :create, :destroy]
  resources :pictures do
    collection do
      post :confirm
    end
  end

end
