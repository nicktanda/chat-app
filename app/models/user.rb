class User < ApplicationRecord
  has_secure_password

  has_many :channels, dependent: :destroy

  has_many :user_channels, dependent: :destroy
  has_many :channels, through: :user_channels, dependent: :destroy
end
