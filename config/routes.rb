Rails.application.routes.draw do
  root "urls#index"

  resources :urls
  
  get '/u/:short_url', to: 'urls#redirect'

end
