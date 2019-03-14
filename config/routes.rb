Rails.application.routes.draw do
  root to: 'home#index'
  get '/search' => 'home#index'

  devise_for :users

  resource :profile, only: [:edit]
  resources :profiles, only: [:show, :update]


  resources :locations, only: [:index, :show] do
    resources :events, only: [:index, :show] do
      resources :reservations, only: [:create]
    end
  end
end
