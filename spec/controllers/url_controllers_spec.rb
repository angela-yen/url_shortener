require 'spec_helper'
require 'rails_helper'

RSpec.describe UrlsController do 

  describe "GET #show" do
      it "gets the correct entry in the DB" do
        get :show, params: { id: 20 }
      expect (response).to be { Url[20] }
    end 
  end 

  describe "POST #new" do 
    let (:do_post) {
      post :create, params: { url: { long_url: 'longurl.com'} }
    }
    it "creates a new entry in the DB" do 
      expect { do_post }.to change {Url.count}.by 1
    end 
  end

  describe "GET #redirect" do
    let (:get_url) {Url[long_url: 'www.longurl.com']}
    it "redirects to the long URL" do
      get :redirect, params: { short_url: 'FNBEJ2' }
      expect(response).to redirect_to(get_url)
    end 
  end 

  describe "GET #url_params" do 
    it "GETs a URL param that is a string" do 
      get :url_params, params: { long_url: 'www.longurl.com', short_url: 'FNBEJ2' }
      expect(response).to type_of(String)
    end
  end 

end 