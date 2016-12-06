class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @article = Article.all
  end

  def create
    @article = Article.create(news_params)
    redirect_to @article
  end

  private

  def news_params
    params.require(:article).permit(:title, :author, :content, :source)
  end
end
