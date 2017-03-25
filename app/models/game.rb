class Game < ApplicationRecord
  belongs_to :competitor
  belongs_to :wager, optional: true

  validates :competitor_id, :game_id, :round_id, presence: true

  # enum category: {"Harry Potter" => 1, "History" => 2, "Pop Culture" => 3}
end
