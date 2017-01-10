Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories, only: [:index, :show]
  resources :features, only: [:index, :show]
  resources :products, only: [:index]
  resources :sessions, only: [:show]

  root to: "categories#index"

  #Route to direct Feature links to add Feature to "My List"
  post "session/add_to_list", to: "sessions#add_to_list", as: "add_to_list"

end
