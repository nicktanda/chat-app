class Message < ApplicationRecord
  belongs_to :channel
  belongs_to :author, class_name: "User", foreign_key: :user_id
end
