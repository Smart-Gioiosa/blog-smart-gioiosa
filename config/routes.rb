Rails.application.routes.draw do
  
  namespace :admin do
    root to: "dashboard#index"
  end

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
