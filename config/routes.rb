Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories, only: [:index, :show]
  resources :features, only: [:index]

  # root to: "features#index"
  root to: "categories#index"

end
