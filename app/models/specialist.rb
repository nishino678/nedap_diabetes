class Specialist < ApplicationRecord
  validates :name, presence: true
  validates :bio, presence: true
  has_many :articles, inverse_of: :specialist
  accepts_nested_attributes_for :articles
end
