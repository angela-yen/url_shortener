class UrlsController < ApplicationController
  
  def index
    @urls = Url.all
  end

  def show
    @url = Url.find(params[:id])
  end 

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
 
  def redirect 
    @url = Url.find_by(short_url: params[:short_url])
    redirect_to @url.long_url, allow_other_host: true
  end 
  
  private

  def url_params
    params.require(:url).permit(:long_url, :short_url)
  end

end
