class AddingCompetitorIDtoSessionModel < ActiveRecord::Migration[5.0]
  def change
    add_column :sessions, :competitor_id, :integer
  end
end
