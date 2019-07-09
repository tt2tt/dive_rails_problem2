Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'pictures#index'
  resources :pictures
  resources :users, only: [:new, :show, :create, :destroy]
end
