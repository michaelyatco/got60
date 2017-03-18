class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :competitor_id
      t.integer :chatroom_id

      t.timestamps
    end
  end
end
