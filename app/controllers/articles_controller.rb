class ArticlesController < ApplicationController
  before_action :logged_in_user, only: [:show, :index]
  before_action :admin_user,     only: [:new, :edit, :destroy]


  def new
    @article = Article.new
    3.times do
     question = @article.questions.build
     3.times { question.answers.build }
   end
 end

  def show
  @article = Article.find(params[:id])
end

def index
  if params[:tag].present?
    flash.clear
    @article = Array.new
    params[:tag].split(' ').each do | tag |
      tag.downcase!
      unless Article.tagged_with(tag).nil?
        @article = @article | Article.tagged_with(tag)
      end
      unless @article.any?
        flash[:error] = "Geen artikel gevonden met deze tag."
        @article = Article.all.order('created_at DESC')
      end
    end
  else
    @article = Article.all.order('created_at DESC')
  end
end

def edit
  @article = Article.find(params[:id])
end

def update
  @article = Article.find(params[:id])
    if @article.update_attributes(news_params)
    flash[:succes] = "Artikel bijgewerkt"
    redirect_to @article
  else
    render 'edit'
  end
end


def create
  @article = Article.new(news_params)
  if @article.save
    redirect_to @article
    flash[:succes] = "Artikel aangemaakt."
  else
    render 'new'
  end
  puts @article.errors.messages
end

def destroy
  Article.find(params[:id]).destroy
  redirect_to articles_path
end

private

  def catch_not_found
    yield
  rescue ActiveRecord::RecordNotFound
    redirect_to articles_path, :flash => { :error => "Geen artikel gevonden met deze tag." }
  end

  def news_params
    params.require(:article).permit(:all_tags, :id, :specialist_id, :explanation, :title, :author, :content, :source, :article_image,
      specialists_attributes: [:id],
      questions_attributes: [:id, :content, :article_id,
        answers_attributes: [:id, :content, :correct]
        ]
      )
  end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Meld je aan of log in om verder te gaan."
      redirect_to root_url
    end
  end
end
