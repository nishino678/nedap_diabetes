FactoryGirl.define do

  factory :fact do
    title "testfact"
    content "testcontent"
  end

  factory :specialist do
    name "henk"
    profession "professional henk"
    bio "sjaak"
  end

  factory :article do
    article_image File.open(File.join(Rails.root, 'db', 'seed_images', 'notenmix.jpg'))
    title "test"
    content "test"
    author "test"
    source "test"
    specialist_id "1"
    explanation "testexplanation"
    all_tags "testtag, tag"
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

  factory :user do
    firstname "testanswer"
    email "test@email.com"
    password "password"
    password_confirmation "password"
  end
end