Rails.application.routes.draw do
  get 'messages/create'
  devise_for :users
  resources :chatrooms
  resources :messages, only: [:create]

  root 'chatrooms#index'  
end
