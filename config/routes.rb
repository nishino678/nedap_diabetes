Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  root 'welcome#index'
  get 'sessions/new'
  get 'users/new'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/users',     to: 'users#index'
  post '/users/:id', to: 'sessions#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'favorites', to: 'users#favorites'
  get 'users/:id/favorites', to: 'users#favorites'
  resources :facts
  resources :specialists
  resources :users
  resources :articles do
    resource :favorite, only: [:index, :create, :destroy]
    resources :questions
  end
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
