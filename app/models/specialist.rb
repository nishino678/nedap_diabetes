class Specialist < ApplicationRecord
  has_many :articles, inverse_of: :specialist
  accepts_nested_attributes_for :articles
end
