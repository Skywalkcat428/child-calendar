Rails.application.routes.draw do
  devise_for :users
  root to: "calendar#index"
  resources :users, only: [:edit, :update]
  
  resources :calendar_rooms, only: [:new, :create] do
    resources :calendar, only: [:index, :create]
  end

  resources :chat_rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end
