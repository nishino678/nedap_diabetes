Rails.application.routes.draw do
  get 'news/show_all'

  get 'users/new'
  get  '/news',    to: 'news#show_all'
  get  '/news/new',    to: 'news#new'
  resources :news
end
