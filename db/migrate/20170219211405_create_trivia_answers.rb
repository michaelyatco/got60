class CreateTriviaAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :trivia_answers do |t|
      t.integer :question_id
      t.string :answer
      t.boolean :correct

      t.timestamps
    end
  end
end
