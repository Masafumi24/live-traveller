Rails.application.routes.draw do
  devise_for :users
  root to: "lives#index"
  resources :lives only: [:index, :new, :create,]
  resources :artists only: [:new, :create]
  resources :goods only: [:new, :create]
  resources :groups only: [:index, :new, :create]
  resources :messages only: [:index, :create]
end
