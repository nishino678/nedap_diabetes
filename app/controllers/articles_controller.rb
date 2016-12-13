class ArticlesController < ApplicationController
  before_action :logged_in_user, only: [:show, :index, :edit, :update, :destroy]
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
  @article = Article.all.order('created_at DESC')
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
  redirect_to 'index'
end

private

def news_params
  params.require(:article).permit(:id, :specialist_id, :explanation, :title, :author, :content, :source,
    specialists_attributes: [:id],
    questions_attributes: [:id, :content, :article_id,
      answers_attributes: [:id, :content, :correct
      ]
    ]
    )
end

def logged_in_user
  unless logged_in?
    store_location
    flash[:danger] = "Log eerst in."
    redirect_to login_url
  end
end
end
