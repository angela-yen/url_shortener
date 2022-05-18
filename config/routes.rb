Rails.application.routes.draw do
  root "urls#index"

  resources :urls
  # post '/:urls', to: 'urls#index' 
  # get '/:short_url', to: redirect('/urls/%{long)url}')

end


# get '/stories/:name', to: redirect('/articles/%{name}')

# '/:id:/short_url' 