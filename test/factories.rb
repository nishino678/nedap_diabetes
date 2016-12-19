FactoryGirl.define do
  factory :specialist do
    name "henk"
    profession "professional henk"
    bio "sjaak"
  end

  factory :article do
    title "test"
    content "test"
    author "test"
    source "test"
    specialist_id "1"
    explanation "testexplanation"
    specialist
    factory :article_with_questions do
      transient do
        questions_count 3
      end
      after(:create) do |article, evaluator|
        create_list(:question, evaluator.questions_count, article: article)
      end
    end
  end

  factory :question do
    content "testquestion"
      transient do
        answers_count 3
      end
      after(:create) do |question, evaluator|
        create_list(:answer, evaluator.answers_count, question: question)
      end
    article
  end

  factory :answer do
    content "testanswer"
  end
end