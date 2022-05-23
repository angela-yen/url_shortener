Rails.application.routes.draw do
  root "urls#index"

  resources :urls
  # get '/url', to: 'urls#index'
  # get '/url/:id', to: 'urls#show'

  # get '/url/new', to: 'urls#new'
  # post 'url', to: 'urls#create' 

  
  get '/u/:short_url', to: 'urls#redirect'

end
