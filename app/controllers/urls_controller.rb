class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def show
    @url = Url.find(params[:id])
  end 

  # using a form create a new entry into the DB (long_url)
  def new 
    @url = Url.new
  end 

  def create
    @url = Url.new(url_params)
  
    if @url.save 
      redirect_to @url

    else 
      render :new, status: :unprocessable_entity
    end
  end
 

  # if params.short_url (the length 6 combination shown on the URL) matches a value of in the URLS.short_url column in the URL table, we want to return the urls.long_url and redirect to that site

  private

  def url_params
    params.require(:url).permit(:long_url)
  end

end
