module ArticlesHelper
  def question_content(number)
    @article.questions[number].content
  end

  def question_answer(number, answernum)
    @article.questions[number].answers[answernum].content
  end

  def question_answer_correct?(number, answernum)
    @article.questions[number].answers[answernum].correct
  end
end
