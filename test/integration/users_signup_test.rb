require 'test_helper'
class UsersSignupTest < ActionDispatch::IntegrationTest

  test "valid name invalid email and password" do
    get signup_path
    assert_template 'users/_voornaam_step'
    assert_difference 'User.count', 0 do
      post signup_path, params: { user: { firstname: "user" } }
      assert_template 'users/_kennismaken_step'
      post signup_path, params: { user: { } }
      assert_template 'users/_email_pass_step'
      post signup_path, params: { user: { email: "shanky@examplecom", password:              "pass", password_confirmation: "pass" } }
    end
    assert_template 'users/_email_pass_step'
  end

  test "invalid name" do
    get signup_path
    assert_template 'users/_voornaam_step'
    assert_difference 'User.count', 0 do
      post signup_path, params: { user: { firstname: "" } }
    end
    assert_template 'users/_voornaam_step'
  end

  test "valid signup information" do
    get signup_path
    assert_template 'users/_voornaam_step'
    assert_difference 'User.count', 1 do
      post signup_path, params: { user: { firstname: "shankydank" } }
      assert_template 'users/_kennismaken_step'
      post signup_path, params: { user: { } }
      assert_template 'users/_email_pass_step'
      post signup_path, params: { user: { email: "shanky@example.com", password: "password", password_confirmation: "password" } }
      assert_template 'users/_bevestiging_step'
      post signup_path, params: { user: { } }
    end
    follow_redirect!
    assert_template 'articles/index'
    assert_not flash.empty?
    assert is_logged_in?
  end
end