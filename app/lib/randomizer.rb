class Randomizer

    def self.random_string(length = 6)
      [*0..9, *'A'..'Z'].shuffle[0...length].join
    end

end 
