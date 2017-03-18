class Wager < ApplicationRecord
  has_one :game
  has_many :competitors, through: :games
  validates :bet, presence: true
end
