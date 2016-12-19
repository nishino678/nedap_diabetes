require 'test_helper'

class ArticlesTest < ActionDispatch::IntegrationTest

def setup
  @user = users(:example)
  @admin = users(:admin)
end

test "non admin can't see add article and specialist button" do
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

  test "admin can edit article" do
    log_in_as(@admin)
    @article = create(:article_with_questions)
    get edit_article_path(@article)
    assert_template 'articles/edit'
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