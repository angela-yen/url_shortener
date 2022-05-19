Rails.application.routes.draw do
  root "urls#index"

  # get '/urls', to: 'urls#index'
  # post '/urls/:id', to: 'urls#show'

  resources :urls
  # post '/:urls', to: 'urls#index' 
  # get '/:short_url', to: redirect('/urls/%{long)url}')

end


# get '/stories/:name', to: redirect('/articles/%{name}')

# '/:id:/short_url' 