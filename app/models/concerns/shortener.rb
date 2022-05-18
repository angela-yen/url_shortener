module Shortener
  extend ActiveSupport::Concern

  # include do 
  #   validates :long_url, presence: true
  # end 

    def shrink
      @url.short_url = [*'a'..'z', *0..9, *'A'..'Z'].shuffle[0..5].join
    end 

end 
