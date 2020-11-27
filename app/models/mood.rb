class Mood < ApplicationRecord
  has_many :user_moods, dependent: :destroy
end
