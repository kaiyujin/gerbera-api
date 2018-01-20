class User < ApplicationRecord
  has_secure_password
  has_many :authories

  validates :name, presence: true
  validates :email, presence: true
end
