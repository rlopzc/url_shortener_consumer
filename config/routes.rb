Rails.application.routes.draw do
  resources :short_urls
  post '/token', to: 'users#token'
  get '/unauthenticated', to: 'pages#unauthenticated'
  get '/unauthorized', to: 'pages#unauthorized'
end
