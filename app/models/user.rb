class User < ApplicationRecord
  # email　オブジェクトが保存される時点で小文字に変換する
  before_save { email.downcase! }
  # before_save { self.email = email.downcase }

  # name のバリデーション
  validates :name, presence: true, length: { maximum: 25 }

  # email のバリデーション
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    length: { maximum: 105 },
                    format: { with: VALID_EMAIL_REGEX }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
