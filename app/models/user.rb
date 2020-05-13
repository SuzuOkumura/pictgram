class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 14 }
  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX }
  validates :password, format: {with: /\A[a-zA-Z0-9]+\z/}, length: { in: 8..32 }
  has_secure_password
end
