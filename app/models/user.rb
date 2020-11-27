class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_moods, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :user_message_sets, dependent: :destroy
  has_many :moods, through: :user_moods
  has_many :message_sets, through: :user_message_sets
  has_many :goals, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
