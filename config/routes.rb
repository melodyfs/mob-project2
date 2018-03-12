Rails.application.routes.draw do
  devise_for :users
  root 'conversations#index'
  resources :personal_messages, only: [:create]
  resources :conversations, only: [:index, :show]
  resources :users, only: [:index]
  resources :personal_messages, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
