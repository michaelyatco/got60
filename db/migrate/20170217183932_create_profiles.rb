class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :competitor_id
      t.string :pic
      t.date :birthdate
      t.string :gender
      t.string :orientation
      t.string :bio
      t.string :preferred_opponent
      t.string :preferred_age_range
      t.string :distance_limits
      t.string :default_games
      t.integer :rating
      t.integer :stats

      t.timestamps
    end
  end
end
