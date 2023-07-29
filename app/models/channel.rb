class Channel < ApplicationRecord
  has_many :messages, dependent: :destroy

  has_many :user_channels, dependent: :destroy
  has_many :users, through: :user_channels, dependent: :destroy
end
