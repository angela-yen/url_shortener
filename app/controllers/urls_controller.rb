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
    @url = Url.new(long_url: "...", short_url: "...")
  
    if @url.save 
      redirect_to @url
    else 
      render :new, status: :unprocessble_entity 
    end
  end

end
