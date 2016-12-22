class Article < ApplicationRecord
  validates :all_tags, :specialist, :title, :author, :content, :source, :explanation, presence: true
  validates :specialist_id, presence: true, numericality: { only_integer: true }
  #images
  validates :article_image, attachment_presence: true
  validates_with AttachmentSizeValidator, attributes: :article_image, less_than: 1.megabytes

  has_many :questions, inverse_of: :article, dependent: :destroy
  has_many :taggings
  has_many :tags, through: :taggings, dependent: :destroy
  accepts_nested_attributes_for :questions
  belongs_to :specialist, inverse_of: :articles

  has_attached_file :article_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ":style/missing.png"
  validates_attachment_content_type :article_image, content_type: /\Aimage\/.*\z/

  def all_tags=(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(', ')
  end

  def self.tagged_with(name)
    Tag.find_by(name: name).articles
  end
end
