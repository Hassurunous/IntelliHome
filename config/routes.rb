Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories, only: [:index, :show]
  resources :features, only: [:index, :show]
  resources :products, only: [:index]
  resources :users, only: [:show, :index]

  root to: "static_pages#home"

  get 'home', to: "static_pages#home", as: "home"

  get 'signup', to: "users#new", as: "signup"

  post 'signup', to: "users#create"

  get 'login', to: "sessions#new", as: "login"

  post 'login', to: "sessions#create"

  delete 'logout', to: "sessions#destroy", as: "logout"

  get 'about', to: "static_pages#about", as: "about"

  get 'help', to: "static_pages#help", as: "help"

  get 'contact', to: "static_pages#contact", as: "contact"

end
