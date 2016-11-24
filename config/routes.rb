Rails.application.routes.draw do
  root 'users#new'
  resources :users, only: [:new, :create]
  resources :short_urls
  post '/token', to: 'users#token'
  get '/unauthenticated', to: 'pages#unauthenticated'
  get '/unauthorized', to: 'pages#unauthorized'
  get 'analytics/index'
end
