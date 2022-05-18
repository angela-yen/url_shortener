class Url < ApplicationRecord
  include Shortener
  
  # add a new instance of of the shortner. shortener = Shortener.new, short_url = shortner.shrink 

  validates :url, presence: true
  # validates :short_url, presence: true, lenght: { maximum: 6 }

end
