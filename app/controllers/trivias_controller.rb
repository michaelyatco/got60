class TriviasController < ApplicationController

  def index
    @trivia_question = TriviaQuestion.all.sample
    @trivia_answers = TriviaAnswer.where(trivia_question_id: @trivia_question.id)
    render "index.html.erb"
  end

    
end
