class Answer < ApplicationRecord
  validates :content, presence: true
  belongs_to :question, inverse_of: :answers
end
