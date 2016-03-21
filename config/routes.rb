Rails.application.routes.draw do
  resources :races
  resources :border_types
  resources :regions_borders
  resources :areas
  resources :environment_types
  resources :environments
  resources :regions
  resources :position_states
  resources :positions
  resources :position_states
  resources :positions
  resources :maps
  resources :turns
  resources :games
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
