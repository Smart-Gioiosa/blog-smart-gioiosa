Rails.application.routes.draw do




  mount Ckeditor::Engine => '/ckeditor'
  get 'events/index'

  get 'team/index'

  devise_for :users
  resources :posts, only:[:index, :show]


  namespace :admin do
    root to: "dashboard#index"
    resources :posts
    resources :projects
    resources :contacts
    resources :newsletters
    resources :tags
    resources :events
  end

  get 'contest/index'
  match 'contest-fotografico'=> 'contest#index', via: :get
  match 'chi-siamo' => 'about_us#index', via: :get
  match 'contatti' => 'contacts#new', via: :get
  match 'team' => 'team#index', via: :get
  match 'co-working' => 'co_working#index', via: :get
  resources :contacts, path:'contatti', only: [:new, :create]
  resources :newsletters
  resources :tags
  resources :projects
  resources :events
  root to: "home#index"
  match 'vincitori' => 'cfp_pages#vincitori', via: :get
  match 'idee' => 'cfp_pages#idee', via: :get
  match 'giuria' => 'cfp_pages#giuria', via: :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
