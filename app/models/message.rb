class Message < ApplicationRecord
  belongs_to :channel
  has_one :user
end
