Rails.application.routes.draw do
  devise_for :users
  root to: "calendar#index"
  resources :users, only: [:edit, :update]

  resources :calendar_rooms, only: [:index, :new, :create] do
    resources :calendars, only: [:index, :create]
  end

  resources :chat_rooms, only: [:index, :new, :create] do
    resources :messages, only: [:index, :create]
  end
end
