Rails.application.routes.draw do
  root to: 'users#new'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :show, :create, :destroy]
  resources :pictures do
    collection do
      post :confirm
    end
  end

end
