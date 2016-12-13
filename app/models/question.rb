class Question < ApplicationRecord
  validates :source, presence: true
  belongs_to :article, inverse_of: :questions
  has_many :answers, inverse_of: :question
  accepts_nested_attributes_for :answers
end
