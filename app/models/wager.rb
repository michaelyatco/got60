class Wager < ApplicationRecord
  has_many :games
  has_many :competitors, through: :games
end
