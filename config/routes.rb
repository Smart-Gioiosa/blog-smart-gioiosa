Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  get 'events/index'

  get 'team/index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
   #resources :posts, only:[:index, :show]


  namespace :admin do
    root to: "dashboard#index"
    resources :posts
    resources :projects
    resources :contacts
    resources :newsletters
    resources :tags
    resources :events
    resources :categories
  end

  namespace :area_privata do
    resources :users do
      resources :smartphotos
    end
  end

  get 'contest/index'
  match 'contest-fotografico/regolamento'=> 'contest#regolamento', via: :get
  resources :contest, path: 'contest-fotografico'
  match 'chi-siamo' => 'about_us#index', via: :get
  match 'contatti' => 'contacts#new', via: :get
  match 'team' => 'team#index', via: :get
  match 'co-working' => 'co_working#index', via: :get
  resources :contacts, path:'contatti', only: [:new, :create]
  resources :posts, path: 'smart-blog', only: [:index, :show]
  resources :posts, only:[:index, :show]
  resources :newsletters
  resources :tags
  resources :projects
  resources :events
  resources :categories
  root to: "home#index"
  match 'vincitori' => 'cfp_pages#vincitori', via: :get
  match 'idee' => 'cfp_pages#idee', via: :get
  match 'giuria' => 'cfp_pages#giuria', via: :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
