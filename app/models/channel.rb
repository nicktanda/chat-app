class Channel < ApplicationRecord
  has_many :users, dependent: :destroy
end
