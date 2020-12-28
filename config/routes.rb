Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
 
  resources :photos, only: [:new, :create, :index, :show]
  resources :folders, only: [:new, :create, :index, :show]
end
