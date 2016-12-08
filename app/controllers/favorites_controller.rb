class FavoritesController < ApplicationController
  before_action :set_article
  
  def create
    favorite = current_user.favorites.new(favorited: @article)
    if favorite.save
      redirect_to @article, notice: 'Article has been favorited'
    else
      redirect_to @article, alert: 'Something went wrong.'
    end
  end
  
  def destroy
    favorite = current_user.favorites.find_by(favorited: @article)
    if favorite.destroy
      redirect_to @article, notice: 'Article is no longer in favorites'
    else
      redirect_to @article, notice: 'Favorite is not destroyed'
    end
  end
  
  private
  
  def set_article
    @article = Article.find(params[:article_id])
  end
end
