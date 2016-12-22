require 'test_helper'

class WelcomeTest < ActionDispatch::IntegrationTest
  test "Login and signup links are present on the welcome page" do
    get root_path
    assert_template 'welcome/index'
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", signup_path
  end
end
