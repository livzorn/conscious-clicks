class Bookmark < ApplicationRecord
  belongs_to :user
  validates :link, :name, presence: true
end
