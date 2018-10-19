class User < ApplicationRecord
  has_many :articles
  before_save { self.email = email.downcase }
  
  validates :username, presence: true,
                      uniqueness: { case_sensitive: false },
                      length: { within: 3..30}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: VALID_EMAIL_REGEX }
  
  has_secure_password
  
end