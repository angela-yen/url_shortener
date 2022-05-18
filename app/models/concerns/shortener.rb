module Shortener

  # attr_accessor :shorter_url
  
  # def initialize(shorter_url)
  #   @shorter_url = shorter_url
  # end

  def shrink
    shorter_url = [*'a'..'z', *0..9, *'A'..'Z'].shuffle[0..5].join
    puts shorter_url
  end 

end 
