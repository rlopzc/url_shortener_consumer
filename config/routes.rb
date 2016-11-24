Rails.application.routes.draw do
  resources :short_urls
  post '/token', to: 'users#token'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
