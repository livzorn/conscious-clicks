class MessageSet < ApplicationRecord
  has_many :user_message_sets, dependent: :destroy
  belongs_to :user
  validates :messages, presence: true
end
