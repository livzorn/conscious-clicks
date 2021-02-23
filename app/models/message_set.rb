class MessageSet < ApplicationRecord
  has_many :user_message_sets, dependent: :destroy
  belongs_to :user
  validates :theme, presence: true
  validates :message_1, presence: true
end
