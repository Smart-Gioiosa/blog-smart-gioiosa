Rails.application.routes.draw do

  resources :posts, only:[:index, :show]


  namespace :admin do
    root to: "dashboard#index"
    resources :posts
    resources :projects
    resources :contacts
    resources :newsletters
  end

  resources :contacts
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
