Rails.application.routes.draw do
  root "urls#index"

  resources :urls
  # get '/url', to: 'urls#index'
  # get '/url/:id', to: 'urls#show'

  # get '/url/new', to: 'urls#new'
  # post 'url', to: 'urls#create' 


  
  # get '/:short_url', to: redirect('/urls/%{long)url}')

  
  # post '/url', to: 'urls#index'

end
