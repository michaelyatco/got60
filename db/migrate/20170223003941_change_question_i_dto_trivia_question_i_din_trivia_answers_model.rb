class ChangeQuestionIDtoTriviaQuestionIDinTriviaAnswersModel < ActiveRecord::Migration[5.0]
  def change
    remove_column :trivia_answers, :question_id, :integer
    add_column :trivia_answers, :trivia_question_id, :integer
  end
end
