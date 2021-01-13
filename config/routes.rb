Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
 
  resources :photos, only: [:new, :create, :index, :show]
  resources :folders, only: [:new, :create, :index, :show, :update] do
    resources :photos, only: [:index, :new, :create, :update]
  end
  resources :photo_folders, only: [:create]
end
