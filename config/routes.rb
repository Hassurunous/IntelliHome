Rails.application.routes.draw do
  get 'users/new'

  get 'home', to: "static_pages#home", as: "home"

  get 'signup', to: "users#new", as: "signup"

  post 'signup', to: "users#create"

  get 'login', to: "static_pages#login", as: "login"

  get 'logout', to: "static_pages#logout", as: "logout"

  get 'about', to: "static_pages#about", as: "about"

  get 'help', to: "static_pages#help", as: "help"

  get 'contact', to: "static_pages#contact", as: "contact"

  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories, only: [:index, :show]
  resources :features, only: [:index, :show]
  resources :products, only: [:index]
  resources :users, only: [:new, :create, :show, :index]

  # root to: "features#index"
  root to: "static_pages#home"

end
