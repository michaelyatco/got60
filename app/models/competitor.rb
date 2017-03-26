class Competitor < ApplicationRecord
  has_secure_password
  has_one :profile
  has_many :friendships
  has_many :games
  has_many :images, through: :profiles
  has_many :friends, through: :friendships
  has_many :wagers, through: :games
  has_many :messages
  has_many :sessions
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :competitor

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :email, :format => { :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
end
