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
    double_redirect
    assert_template 'articles/index'
  end

  test "logged in user can't get add article path" do
    log_in_as(@user)
    get new_article_path
    assert_redirected_to root_url
    double_redirect
    assert_template 'articles/index'
  end

  test "logged in user can't get add specialist path" do
    log_in_as(@user)
    get new_specialist_path
    assert_redirected_to root_url
    double_redirect
    assert_template 'articles/index'
  end

  test "logged in user can't get add fact path" do
    log_in_as(@user)
    get new_fact_path
    assert_redirected_to root_url
    follow_redirect!
    assert_redirected_to articles_path
  end

  test "user can only edit own profile" do
    log_in_as(@user)
    get edit_user_path(@otheruser)
    follow_redirect!
    assert_redirected_to articles_path
  end

  test "not logged in articles" do
    @article = create(:article)
    get articles_path
    assert_redirected_to root_url
    get article_path(@article)
    assert_redirected_to root_url
    get edit_article_path(@article)
    assert_redirected_to root_url
    get new_article_path
    assert_redirected_to root_url
    delete article_path(@article)
    assert_redirected_to root_url
  end

  test "admin can edit and create" do
    log_in_as(@admin)
    assert_success(new_specialist_path)
    assert_success(new_article_path)
    assert_success(new_fact_path)
  end

  test "not logged in specialists" do
    @specialist = create(:specialist)
    get specialists_path
    assert_redirected_to root_url
    get specialist_path(@specialist)
    assert_redirected_to root_url
    get edit_specialist_path(@specialist)
    assert_redirected_to root_url
    get new_specialist_path
    assert_redirected_to root_url
    delete specialist_path(@specialist)
    assert_redirected_to root_url
  end

  test "not logged in users" do
    @user = create(:user)
    get users_path
    assert_redirected_to root_url
    get user_path(@user)
    assert_redirected_to root_url
    get edit_user_path(@user)
    follow_redirect!
    assert_template 'welcome/index'
    get new_user_path
    assert_template 'users/new'
    delete user_path(@user)
    assert_redirected_to root_url
  end

  test "not logged in facts" do
    @fact = create(:fact)
    get facts_path
    assert_redirected_to root_url
    get fact_path(@fact)
    assert_redirected_to root_url
    get edit_fact_path(@fact)
    assert_redirected_to root_url
    get new_fact_path
    assert_redirected_to root_url
    delete fact_path(@fact)
    assert_redirected_to root_url
end

end