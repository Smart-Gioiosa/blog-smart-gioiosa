Rails.application.routes.draw do
  
  root to: "home#index"
  resources :posts, only:[:index, :show] 


  namespace :admin do
    root to: "dashboard#index"
    resources :posts
  end

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
