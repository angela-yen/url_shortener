require 'spec_helper'
require 'rails_helper'

# Rendering form template 
# Renderinng

RSpec.describe UrlsController do
  let(:url) { Url.create(long_url: 'www.longurl.com') }
  let(:url_id) { url.id }

  describe "GET #index" do 
    it "returns sucessful response" do 
      get :index
      expect(response).to be_successful
    end 

    it "renders the index template" do 
      get :index
      expect(response). to render_template("index")
    end
  end

  describe "GET #show" do
    let(:get_show) { get :show, params: { id: url.id } }
   
    it "renders the show template" do 
      get_show
      expect(response). to render_template("show")
    end

    # it "gets the correct entry in the DB" do
    #   expect_any_instance_of(Url.new.class).to receive(:find).with(url_id).exactly(:once)
    #   get_show
    # end 
    
    # it "creates a QR code based on the long url" do 
    #   get_show
    #   expect(response). 

  end 

  describe "GET #redirect" do
  let (:get_redirect) { get :redirect, params: {short_url: url.short_url} }

    it "redirects to the long URL" do
      get_redirect
      expect(response).to redirect_to(url.long_url)
    end 
  end 


  describe "POST #create" do 
    let (:url_params) { { long_url: 'longurl.com'} } 
    let (:do_post) {
      post :create, params: { url: url_params }
    }
    it "creates a new entry in the DB" do 
      expect{ do_post }.to change {Url.count}.by 1
    end 

    context "when passing a short url param" do
      let (:short_url) {'ABC123'} 

      before do 
        url_params[:short_url] = short_url
      end 

      it "does not save the short url" do 
        do_post 
        expect(Url.last.short_url).not_to eq(short_url)
      end
    end 
  end
end 