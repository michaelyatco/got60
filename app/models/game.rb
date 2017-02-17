class Game < ApplicationRecord
  belongs_to :competitor
  belongs_to :wager

  validates :competitor_id, :game_id, :round_id, presence: true
end
