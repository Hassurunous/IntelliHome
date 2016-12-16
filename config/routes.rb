Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories, only: [:index, :show]
  resources :features, only: [:index, :show]
  resources :products, only: [:index]

  # root to: "features#index"
  root to: "categories#index"

end
