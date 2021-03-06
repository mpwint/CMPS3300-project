Rails.application.routes.draw do
  require 'commontator'
  mount Commontator::Engine => '/commontator'
  devise_for :users
  devise_for controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations"
    
  }
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'posts#index' 
end