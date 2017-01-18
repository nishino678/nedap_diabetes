require 'test_helper'

class FavoritesTest < ActionDispatch::IntegrationTest
  def setup
  @user = users(:example)
  @otheruser = users(:example1)
  end

  test "User can see favorites index and links to the articles" do
    log_in_as(@user)
    @article = create(:article_with_questions)
    post article_favorite_path(@article)
    get favorites_path
    assert_template 'users/favorites'
    assert_select "a[href=?]", article_path(@article)
  end

  test "User can favorite" do
    log_in_as(@user)
    @article = create(:article_with_questions)
    get article_path(@article)
    assert_difference '@user.favorites.count', 1 do
    post article_favorite_path(@article)
  end
    assert_redirected_to @article
  end

  test "User can unfavorite" do
    log_in_as(@user)
    @article = create(:article_with_questions)
    get article_path(@article)
    post article_favorite_path(@article)
    assert_difference '@user.favorites.count', -1 do
    delete article_favorite_path(@article)
  end
    assert_redirected_to @article
  end


  test "User can see favorite or unfavorite link on article page" do
    log_in_as(@user)
    @article = create(:article_with_questions)
    get article_path(@article)
    assert_select "a[href=?]", article_favorite_path(@article)
  end
end
