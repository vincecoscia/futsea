Rails.application.routes.draw do
  get 'users/create'
  get 'users/destroy'
  devise_for :users
  resources :users, :only => [:show]
  root to: 'home#index'
  get '/locations', to: 'locations#index'
  get 'locations/:id', to: 'locations#show'
  get '/events', to: 'events#index'
  get 'events/:id', to: 'events#show'
  get '/search' => 'home#index'

  resources :locations, only: [:index, :show] do
    resources :events, only: [:index, :show]
  end

end
