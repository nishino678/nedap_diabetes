class Tag < ApplicationRecord
  before_save { name.downcase! }
  validates :name, presence: true
  has_many :taggings
  has_many :articles, through: :taggings
end
