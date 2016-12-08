module ArticlesHelper
  def question_content(number)
    @article.questions[number].content
  end

  def question_answer(number, answernum)
    @article.questions[number].answers[answernum].content
  end
end
