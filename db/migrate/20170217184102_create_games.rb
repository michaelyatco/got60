class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :competitor_id
      t.integer :challenger_id
      t.integer :game_id
      t.integer :wager_id
      t.integer :round_id

      t.timestamps
    end
  end
end
