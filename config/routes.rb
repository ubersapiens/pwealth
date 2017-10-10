Rails.application.routes.draw do
  resources :cms_pages
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
  get 'corporate_multi_family_office' => 'main#corporate_multi_family_office'
  get 'international_tax_planning' => 'main#international_tax_planning'
  get 'succession_planning' => 'main#succession_planning'
  get 'wealth_asset_management' => 'main#wealth_asset_management'
  get 'redomiciliation_companies_foundations' => 'main#redomiciliation_companies_foundations'
  get 'incorporation_ibcs' => 'main#incorporation_ibcs'
  get 'incorporation_foundations' => 'main#incorporation_foundations'
  get 'corporate_international_tax_planning' => 'main#corporate_international_tax_planning'
  get 'reinsurance_services' => 'main#reinsurance_services'
  get 'banking_services' => 'main#banking_services'
  get 'family_offices' => 'main#family_offices'
  get 'immigration/citizenship_antigua_barbuda' => 'main#citizenship_antigua_barbuda'
  get 'immigration/citizenship_cyprus' => 'main#citizenship_cyprus'
  get 'immigration/citizenship_dominica' => 'main#citizenship_dominica'
  get 'immigration/citizenship_grenada' => 'main#citizenship_grenada'
  get 'immigration/citizenship_malta' => 'main#citizenship_malta'
  get 'immigration/citizenship_st_kitts_nevis' => 'main#citizenship_st_kitts_nevis'
  get 'immigration/citizenship_st_lucia' => 'main#citizenship_st_lucia'
  get 'immigration/residency_cyprus' => 'main#residency_cyprus'
  get 'immigration/residency_malta' => 'main#residency_malta'
  get 'immigration/residency_monaco' => 'main#residency_monaco'
  get 'immigration/residency_panama' => 'main#residency_panama'
  get 'immigration/second_passport_panama' => 'main#second_passport_panama'
  get 'real_estate' => 'main#real_estate'


end
