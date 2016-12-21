require 'test_helper'
class ArticlesTest < ActionDispatch::IntegrationTest

def setup
  @user = users(:example)
  @admin = users(:admin)
end

  test "search with no tag given" do
    log_in_as(@user)
    get articles_path, params: { tag: " " }
    assert_redirected_to articles_path
    assert_not flash.empty?
  end

  test "search with no tag given then with valid tag removes flash" do
    log_in_as(@user)
    get articles_path, params: { tag: " " }
    assert_redirected_to articles_path
    assert_not flash.empty?
    get articles_path, params: { tag: "testtag" }
    assert flash.empty?
  end

  test "search with known tag given" do
    log_in_as(@user)
    create(:article)
    get articles_path, params: { tag: "testtag" }
    assert_response :success
    assert flash.empty?
  end

  test "search with unknown tag given" do
    log_in_as(@user)
    create(:article)
    get articles_path, params: { tag: "unknown" }
    assert_redirected_to articles_path
  end

  test "logged in user can view article, logged out cant" do
    log_in_as(@user)
    @article = create(:article_with_questions)
    get article_path(@article)
    assert_template "articles/show"
  end

  test "user can't see add article and specialist button" do
    log_in_as(@user, remember_me: '0')
    get articles_path
    assert_select "a[href=?]", new_article_path,      count: 0
    assert_select "a[href=?]", specialists_path,      count: 0
  end

  test "admin can see add article and specialist button" do
    log_in_as(@admin, remember_me: '0')
    get articles_path
    assert_select "a[href=?]", new_article_path
    assert_select "a[href=?]", specialists_path
  end

  test "show article as user without delete and edit buttons" do
    log_in_as(@user)
    @article = create(:article_with_questions)
    get article_path(@article)
    assert_select "a[href=?]", edit_article_path(@article),      count: 0
    assert_select 'a[href=?]', article_path(@article), text: 'Verwijder',
      count: 0
  end

  test "show article as admin with delete and edit buttons" do
    log_in_as(@admin)
    @article = create(:article_with_questions)
    get article_path(@article)
    assert_select  'a[href=?]', edit_article_path(@article)
    assert_select 'a[href=?]', article_path(@article), text: 'Verwijder'
  end
end