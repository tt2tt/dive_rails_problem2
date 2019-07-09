Rails.application.routes.draw do
  root to: 'pictures#index'
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :show, :create, :destroy]
  resources :pictures

end
