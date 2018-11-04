class Article < ApplicationRecord
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  
  validates :title, presence: true, length: { within: 3..10}
  validates :description, presence: true, length: { within: 10..300}
  validates :user_id, presence: true
end