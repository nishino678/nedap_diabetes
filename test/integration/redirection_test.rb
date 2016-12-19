require 'test_helper'
class RedirectionTestTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:example)
    @otheruser = users(:example1)
    @admin = users(:admin)
  end

  test "logged in user can't get specialists path" do
    log_in_as(@user, remember_me: '0')
    get specialists_path
    assert_redirected_to root_url
    follow_redirect!
    assert_redirected_to articles_path
  end

  test "logged in user can't get add article path" do
    log_in_as(@user, remember_me: '0')
    get new_article_path
    assert_redirected_to root_url
    follow_redirect!
    assert_redirected_to articles_path
  end

  test "user can only edit own profile" do
    log_in_as(@user, remember_me: '0')
    get edit_user_path(@otheruser)
    follow_redirect!
    assert_redirected_to articles_path
  end

  test "logged in user can view article, logged out cant" do
    log_in_as(@user)
    @article = create(:article_with_questions)
    get article_path(@article)
    assert_template "articles/show"
    delete logout_path
    assert_redirected_to root_url
    get articles_path(@article)
    assert_redirected_to root_url
  end

  test "not logged in redirects" do
    #articles
    get articles_path
    assert_redirected_to root_url
    get article_path(1)
    assert_redirected_to root_url
    get edit_article_path(1)
    assert_redirected_to root_url
    get new_article_path
    assert_redirected_to root_url
    delete article_path(1)
    assert_redirected_to root_url
   #specialists
    get specialists_path
    assert_redirected_to root_url
    get specialist_path(1)
    assert_redirected_to root_url
    get edit_specialist_path(1)
    assert_redirected_to root_url
    get new_specialist_path
    assert_redirected_to root_url
    delete specialist_path(1)
    assert_redirected_to root_url
    #users
    get users_path
    assert_redirected_to root_url
    get user_path(1)
    assert_redirected_to root_url
    get edit_user_path(1)
    follow_redirect!
    assert_template 'welcome/index'
    get new_user_path
    assert_template 'users/new'
    delete user_path(1)
    assert_redirected_to root_url
end

end