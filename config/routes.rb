Rails.application.routes.draw do
  devise_for :users
  get 'users/index'
  root 'users#index'

  resources :images, only: [:new]
end
