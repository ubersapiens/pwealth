Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'main#home'

  resources :user_sessions
  resources :users
  resources :cms_homepages
  resources :cms_pages
  resources :news
  resources :contacts

  get 'login' => 'user_sessions#new', :as => :login
  get 'register' => 'users#new', :as => :register
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'contact' => 'contacts#new'

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    get 'pages', to: 'dashboard#pages'
    get 'contacts', to: 'dashboard#contacts'
    get 'news', to: 'dashboard#news'
  end

  get 'wealth' => 'main#wealth'
  get 'multi_family_office' => 'main#multi_family_office'
  get 'international_tax_planning' => 'main#international_tax_planning'
  get 'succession_planning' => 'main#succession_planning'
  get 'wealth_management' => 'main#wealth_management'

  get 'immigration' => 'main#immigration'
  get 'immigration/antigua_and_barbuda_citizenship' => 'main#antigua_and_barbuda_citizenship'
  get 'immigration/cyprus_citizenship' => 'main#cyprus_citizenship'
  get 'immigration/dominica_citizenship' => 'main#dominica_citizenship'
  get 'immigration/grenada_citizenship' => 'main#grenada_citizenship'
  get 'immigration/malta_citizenship' => 'main#malta_citizenship'
  get 'immigration/st_kitts_and_nevis_citizenship' => 'main#st_kitts_and_nevis_citizenship'
  get 'immigration/st_lucia_citizenship' => 'main#st_lucia_citizenship'
  get 'immigration/cyprus_residency' => 'main#cyprus_residency'
  get 'immigration/malta_residency' => 'main#malta_residency'
  get 'immigration/monaco_residency' => 'main#monaco_residency'
  get 'immigration/panama_residency' => 'main#panama_residency'
  get 'immigration/panama_second_passport' => 'main#panama_second_passport'
  get 'immigration/real_estate' => 'main#real_estate'
  get 'immigration/tax_residence' => 'main#tax_residence'

  get 'corporate_services' => 'main#corporate_services'
  get 'incorporation_of_companies' => 'main#incorporation_of_companies'
  get 'incorporation_of_foundations' => 'main#incorporation_of_foundations'
  get 'formation_of_trusts' => 'main#formation_of_trusts'
  get 'reinsurance_services' => 'main#reinsurance_services'
  get 'banking_services' => 'main#banking_services'
  get 'family_offices' => 'main#family_offices'

  get 'accounting_office_and_secretarial_services' => 'main#accounting_office_and_secretarial_services'
  get 'legal' => 'main#legal'


end
