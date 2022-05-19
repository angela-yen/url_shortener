Rails.application.routes.draw do
  root "urls#index"

  resources :urls
  # get '/url', to: 'urls#show'
  # post '/url', to: 'urls#create' 
  
  # get '/:short_url', to: redirect('/urls/%{long)url}')

  
  # post '/urls/:id', to: 'urls#show'

end
