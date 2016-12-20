class Article < ApplicationRecord
  validates :all_tags, :specialist, :title, :author, :content, :source, :explanation, presence: true
  validates :specialist_id, presence: true, numericality: { only_integer: true }

  has_many :questions, inverse_of: :article, dependent: :destroy
  has_many :taggings
  has_many :tags, through: :taggings, dependent: :destroy
  accepts_nested_attributes_for :questions
  belongs_to :specialist, inverse_of: :articles

  def all_tags=(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(', ')
  end

  def self.tagged_with(name)
    if Tag.find_by(name: name).present?
      Tag.find_by(name: name).articles
    else
      Tag.find(name: name).articles
    end

  end
end
