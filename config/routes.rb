Rails.application.routes.draw do
  get 'chatrooms/index'
  get 'chatrooms/show'
  get 'chatrooms/create'
  devise_for :users
  resources :chatroom

  root 'chatrooms#index'  
end
