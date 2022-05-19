class Url < ApplicationRecord
  # include Shortener
  
  # add a new instance of of the shortner. shortener = Shortener.new, short_url = shortner.shrink 

  validates :long_url, presence: true
  # validates :short_url, presence: true, length: { maximum: 6 }

end
