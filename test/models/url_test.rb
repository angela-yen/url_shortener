require "test_helper"

class UrlTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save url without long url input" do 
    url = Url.new 
    assert_not url.save, "Saved the url without a title"
  end 

  test "should return correct url based on it's id" do 
    url = Url.find(params[:id])
    assert_match url.id, params[:id]
  end 

end
