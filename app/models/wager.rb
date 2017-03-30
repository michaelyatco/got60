class Wager < ApplicationRecord
  has_one :game
  has_many :competitors, through: :games
  # validates :bet, presence: true

  def challenger
    Competitor.find_by(id: self.game.challenger_id).username
  end

  def competitor_name
    Competitor.find_by(id: self.game.competitor_id).username
  end
end
