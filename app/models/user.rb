class User < ApplicationRecord
  before_save { email.downcase! }
  validates :depto,     presence: true
  validates :birthyear, presence: true
  validates :genere,    presence: true
  validates :condo,     presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,     length: { maximum: 255},
                        format: { with: VALID_EMAIL_REGEX },
                        uniqueness: { case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
