Rails.application.routes.draw do
  devise_for :users
  root to: 'beers#index'
  resources :beers, only: [:new, :create, :show, :destroy]
end
