Rails.application.routes.draw do
  root to: "lives#index"
  resources :lives
  resources :artists
  resources :schedules
end
