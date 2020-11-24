class Mood < ApplicationRecord
  has_many :user_message_sets
end
