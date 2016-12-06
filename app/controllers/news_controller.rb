class NewsController < ApplicationController
  def new
    @news = News.new
  end

  def show
    @news = News.find(params[:id])
  end

  def show_all
    @test = News.all
  end

  def create
    @news = News.create(news_params)
  end

  private

  def news_params
    params.require(:news).permit(:news_title, :news_author, :news_content, :news_url)
  end
end
