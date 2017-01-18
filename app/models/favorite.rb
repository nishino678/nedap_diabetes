class Favorite < ApplicationRecord
  validates :user_id, :favorited_type, :favorited_id, presence: true
  belongs_to :user
  belongs_to :favorited, polymorphic: true
end
