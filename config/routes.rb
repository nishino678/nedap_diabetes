Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/users',     to: 'users#index'
  post '/users/1', to: 'sessions#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'users/:id/favorites', to: 'users#favorites'
  resources :users
  resources :articles do

    resource :favorite, only: [:index, :create, :destroy]
    resources :questions
  end
end
