class MessageSet < ApplicationRecord
  has_many :user_message_sets
  validates :messages, presence: true
end
