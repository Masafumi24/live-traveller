Rails.application.routes.draw do
  devise_for :users
  root to: "lives#index"
  resources :lives
  resources :artists
  resources :goods
end
