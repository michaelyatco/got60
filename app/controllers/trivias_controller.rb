class TriviasController < ApplicationController

  def index
    @trivia_question = TriviaQuestion.all.sample
    @trivia_answers = TriviaAnswer.where(trivia_question_id: @trivia_question.id)
    render "index.html.erb"
  end

  def show
   @trivia_question = TriviaQuestion.all.sample 
   @trivia_answers = TriviaAnswer.where(trivia_question_id: @trivia_question.id)
    if params[:answer] == true
      score += 1
      # flash message for correct answer
    else
      # flash for incorrect
    end
  end    
end