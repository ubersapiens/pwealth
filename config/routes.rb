Rails.application.routes.draw do
  root 'main#home'

  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  get 'register' => 'users#new', :as => :register
  post 'logout' => 'user_sessions#destroy', :as => :logout
  
end
