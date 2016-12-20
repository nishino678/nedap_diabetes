class Fact < ApplicationRecord
  validates :title, :content, presence: true
end
