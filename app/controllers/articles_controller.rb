class ArticlesController < ApplicationController
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
    #params.require(:article).permit!
    params.require(:article).permit(:id, :specialist_id, :explanation, :title, :author, :content, :source,
      specialists_attributs: [:id],
      questions_attributes: [:id, :content, :article_id,
        answers_attributes: [:id, :content
        ]
      ]
    )
    #params.require(:article).permit(:id, :title, :author, :content, :source).tap do |whitelisted|
    #  whitelisted[:questions] = params[:content][:questions]
    #end
  end
end
