class Competitor < ApplicationRecord
  has_secure_password
  has_one :profile
  has_many :friendships
  has_many :games
  has_many :images, through: :profiles
  has_many :friends, through: :friendships
  has_many :wagers, through: :games

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :email, :format => { :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
end
