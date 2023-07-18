# config/routes.rb

Rails.application.routes.draw do
  namespace :artists do
    get 'paintings/index'
    get 'galleries/index'
  end
  resources :paintings, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :galleries
  resources :artists do
    resources :galleries, only: [:index], controller: 'artists/galleries'
    resources :paintings, only: [:index], controller: 'artists/paintings'
  end

  root "artists#index"
end
