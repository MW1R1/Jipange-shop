Rails.application.routes.draw do
  resources :paintings, only: [:index, :show, :new, :create, :destroy]
  resources :galleries
  resources :artists

  # Defines the root path route ("/")
  root "artists#index"
end
