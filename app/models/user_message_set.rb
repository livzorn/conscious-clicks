class UserMessageSet < ApplicationRecord
  belongs_to :message_set
  belongs_to :user
end
