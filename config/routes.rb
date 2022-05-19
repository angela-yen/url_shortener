Rails.application.routes.draw do
  root "urls#index"

  resources :urls
  # post '/:urls', to: 'urls#index' 
  # get '/:short_url', to: redirect('/urls/%{long)url}')

  # get '/urls', to: 'urls#index'
  # post '/urls/:id', to: 'urls#show'

end
