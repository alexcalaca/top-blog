class Category < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, length: { within: 3..25}
end