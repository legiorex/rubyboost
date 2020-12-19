require 'digest/md5'

class User < ApplicationRecord
  SALT = 'my_super_secret_salt'.freeze

  validates :email, presence: true, uniqueness: true

  def password=(value)
    self.encrypted_password = password_hash(value)
  end

  def valid_password?(value)
    encrypted_password == password_hash(value)
  end

  private

  def password_hash(value)
    Digest::MD5.hexdigest(value + SALT)
  end
end
