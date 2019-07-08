Rails.application.routes.draw do
  root to: 'pictures#index'
  resources :pictures
  resources :users, only: [:new, :create, :destroy]
end
