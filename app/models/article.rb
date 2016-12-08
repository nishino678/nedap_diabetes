class Article < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :content, presence: true
  validates :source, presence: true
  has_many :questions, inverse_of: :article
  accepts_nested_attributes_for :questions
  belongs_to :specialist, inverse_of: :articles

end
