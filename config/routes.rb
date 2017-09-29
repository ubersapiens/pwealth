Rails.application.routes.draw do
  resources :news
  mount Ckeditor::Engine => '/ckeditor'
  root 'main#home'

  resources :user_sessions
  resources :users
  resources :cms_homepages

  get 'login' => 'user_sessions#new', :as => :login
  get 'register' => 'users#new', :as => :register
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'accounting_office_secretarial_services' => 'main#accounting_office_secretarial_services'
  get 'legal' => 'main#legal'

end
