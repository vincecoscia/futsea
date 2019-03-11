Rails.application.routes.draw do
  root to: 'home#index'
  get '/locations', to: 'locations#index'
  get 'locations/:id', to: 'locations#show'
  get '/events', to: 'events#index'
  get 'events/:id', to: 'events#show'


end
