class CreateWagers < ActiveRecord::Migration[5.0]
  def change
    create_table :wagers do |t|
      t.string :bet
      t.boolean :fulfilled
      t.integer :winner_id
      t.integer :loser_id

      t.timestamps
    end
  end
end
