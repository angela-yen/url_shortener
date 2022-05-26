require 'spec_helper'
require 'rails_helper'

RSpec.describe Url do
  describe ".generate_short_url" do 
    let (:url) {Url.new}

    it "returns a string" do 
      expect(url.send(:generate_short_url)).to be_an_instance_of(String) 
    end 

    it "returns length of 6" do 
      expect(url.send(:generate_short_url).length).to be(6)
    end 
  end

  describe ".new" do 
    it "rejects a blank long_url" do 
      url = Url.new(long_url:'')
      expect(url).not_to be_valid
    end
  end 
end 
