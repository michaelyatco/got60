class AddCompetitorScoreAndChallengerScoreToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :competitor_score, :integer
    add_column :games, :challenger_score, :integer
  end
end
