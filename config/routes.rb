Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
 
  resources :photos, only: [:new, :create, :index]
end
