Rails.application.routes.draw do

  devise_for :users
  resources :posts, only:[:index, :show]


  namespace :admin do
    root to: "dashboard#index"
    resources :posts
    resources :projects
    resources :contacts
    resources :newsletters
  end

  match 'contatti' => 'contacts#new', via: :get
  resources :contacts, path:'contatti', only: [:new, :create]
  resources :newsletters
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
