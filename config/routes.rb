Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :short_urls
  post '/token', to: 'users#token'
  get '/unauthenticated', to: 'pages#unauthenticated'
  get '/unauthorized', to: 'pages#unauthorized'

  root 'users#new'
end
