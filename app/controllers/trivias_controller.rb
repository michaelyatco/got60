class TriviasController < ApplicationController
    before_action :authenticate_competitor!
  def index
    # @trivia_question = TriviaQuestion.all.sample
    # @trivia_answers = TriviaAnswer.where(trivia_question_id: @trivia_question.id)
    # if params[:answer] == @trivia_answers.find_by(correct: true).answer
    #   flash.now[:success] = "Correct!"
    #   if competitor_id 
    #     @games.competitor_score += 1
    #   else challenger_id
    #     @games.challenger_score += 1
    #   end
    #   render "index.html.erb"
    # else
    #   flash.now[:danger] = "WRONG! -Donald Trump"
    #   render "index.html.erb"
    # end
  end    

  def show
    @game = Game.find_by(id: params[:id])
    @chatroom = Chatroom.find_by(game_id: @game.id)
    render 'show.html.erb'
  end
end