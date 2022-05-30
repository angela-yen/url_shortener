Rails.application.routes.draw do
  root "urls#index"

  resources :urls
  
  get '/u/:short_url', to: 'urls#redirect'

  controller :pages do 
    get :qr_code_generator 
    get :qr_code_download
  end

end
