require 'test_helper'

class NewsControllerTest < ActionDispatch::IntegrationTest
  test "should get show_all" do
    get news_show_all_url
    assert_response :success
  end

end
