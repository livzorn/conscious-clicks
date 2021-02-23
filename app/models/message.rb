class Message < ApplicationRecord
  belongs_to :message_set
  validates :content, presence: true
end
