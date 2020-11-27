class Bookmark < ApplicationRecord
  belongs_to :user
  validates :link, :name, presence: true

  def favicon_url
    "https://i.olsh.me/icon?url=#{link}&size=80..120..200"
  end
end
