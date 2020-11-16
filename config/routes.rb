Rails.application.routes.draw do
  devise_for :users
  root to: "calendar#index"
  resources :users, only: [:edit, :update]
end
