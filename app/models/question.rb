class Question < ApplicationRecord
  validates :content, presence: true
  belongs_to :article, inverse_of: :questions
  has_many :answers, inverse_of: :question, dependent: :destroy
  accepts_nested_attributes_for :answers
end
