module Shortener
  extend ActiveSupport::Concern

  include do 
    attr_accessor :short

    def random
      short = [*'a'..'z', *0..9, *'A'..'Z'].shuffle[0..5].join
    end 
  end 

  # class_methods do 
  #   def assign_random

  #   end 
  # end 

end 
