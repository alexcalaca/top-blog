class Article < ApplicationRecord
  validates :title, presence: true, length: { within: 3..10}
  validates :description, presence: true, length: { within: 10..300}
end